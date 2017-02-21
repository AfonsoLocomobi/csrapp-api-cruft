class SilkRoadClient

  def initialize(wsdl_url)

    @client = Savon.client(wsdl: wsdl_url)
    @security_token = nil


  end

  def log_in(username, password)
    response = @client.call(:log_in, message: { :str_login_id => username, :str_password => password })
    response_token = response.body[:log_in_response][:log_in_result]

    @security_token = response_token.to_s.empty? ? nil : response_token

  end

  def user_list
    return nil if @security_token.nil?

    get_all_users_xml = '<?xml version="1.0" encoding="utf-8"?><GetUserIDListInput><SynchronizationToken /></GetUserIDListInput>'
    response = @client.call(:get_user_id_list, message: { :str_security_token => @security_token, :str_xml => get_all_users_xml } )
    user_list_xml = response.body[:get_user_id_list_response][:get_user_id_list_result][:data]
    
    doc = Nokogiri::XML.parse user_list_xml
    doc.xpath('/GetUserIDListOutput/Users/User/LoginID').map do |node|
#      puts node.LoginID
      node.content
    end

  end

  def fetch_user(username)
    return nil if @security_token.nil?

    get_user_profile_xml = Nokogiri::XML::Builder.new(:encoding => 'UTF-8') do |xml|
      xml.GetUserProfileEx2Input {
        xml.EmployeeIDFilter {
          xml.EmployeeIDType 'LoginID'
          xml.ID username
        }
      } 
    end.to_xml


    response = @client.call(:get_user_profile_ex2, message: { :str_security_token => @security_token, :str_xml => get_user_profile_xml } )
    


    error_code = response.body[:get_user_profile_ex2_response][:get_user_profile_ex2_result][:error_num].to_i
    if error_code != 1
      raise "Bad error code: #{error_code}\n#{response}"
    end
     
    fields = Set.new ['LoginID',
                      'CCF_ID_Number',
                      'last_name',
                      'first_name',
                      'Middle_Initial',
                      'Email',
                      'Division',
                      'Department',
                      'Company',
                      'Supervisor_Name',
                      'Supervisor_Email']

    user_xml = response.body[:get_user_profile_ex2_response][:get_user_profile_ex2_result][:data]

    doc = Nokogiri::XML.parse user_xml

    user = Hash.new
    doc.xpath('/GetUserProfileEx2Results/users/user/*').each do |node|
      next unless fields.member?(node.name)

      user[node.name] = node.content
    end

    user

  end

  def fetch_all_users
    basic_users = user_list

    num = 0.0
    num_users = basic_users.length.to_f

    users = basic_users.map do |username|

      num += 1.0
      pct_complete = num / num_users * 100.0

      printf "%d of %d -- %.2f%% complete\n", num, num_users, pct_complete
      fetch_user username
    end

    users
  end
    




  

end
