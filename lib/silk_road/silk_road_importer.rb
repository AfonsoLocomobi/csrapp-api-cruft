class SilkRoadImporter


  def import(users)

    
    users.each do |sru|

      silkroad_username = sru['LoginID']
      employee_number   = sru['CCF_ID_Number']

      if employee_number.nil? || employee_number.empty?
        puts "Could not import silkroad employee '#{silkroad_username}' with missing employee number"
        next
      end

      employee = Employee.find_by employee_number: employee_number
      if !employee
        employee = Employee.new
        employee.record_origin = SILKROAD_RECORD
      end

      if employee.record_origin != SILKROAD_RECORD
        puts "Warning: silkroad employee '#{silkroad_username}' has improper record origin '#{employee.record_origin}'"
      end

      field_mapping.each do |m|
        silkroad_key          = m[:silkroad_key]
        record_key            = m[:record_key]
        convert_empty_to_null = m[:convert_empty_to_null]

        field_value = sru[silkroad_key]

        if field_value.to_s.empty? && convert_empty_to_null
          field_value = nil
        end
      
        employee[record_key] = field_value
      end

      if !employee.save
        puts "Unable to save silkroad user '#{silkroad_username}"
      end
    end
      

  end

  def field_mapping
    [ { :silkroad_key => 'LoginID',           :record_key => :silkroad_username,    :convert_empty_to_null => true },
      { :silkroad_key => 'CCF_ID_Number',     :record_key => :employee_number,      :convert_empty_to_null => true },
      { :silkroad_key => 'last_name',         :record_key => :last_name,            :convert_empty_to_null => true },
      { :silkroad_key => 'first_name',        :record_key => :first_name,           :convert_empty_to_null => true },
      { :silkroad_key => 'Middle_Initial',    :record_key => :middle_initial,       :convert_empty_to_null => true },
      { :silkroad_key => 'Email',             :record_key => :email_address,        :convert_empty_to_null => true },
      { :silkroad_key => 'Division',          :record_key => :division_institute,   :convert_empty_to_null => true },
      { :silkroad_key => 'Department',        :record_key => :department_name,      :convert_empty_to_null => true },
      { :silkroad_key => 'Company',           :record_key => :company,              :convert_empty_to_null => true },
      { :silkroad_key => 'Supervisor_Name',   :record_key => :supervisor_last_name, :convert_empty_to_null => true },
      { :silkroad_key => 'Supervisor_Email',  :record_key => :supervisor_email,     :convert_empty_to_null => true } ]
  end

end
