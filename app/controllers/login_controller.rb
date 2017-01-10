class LoginController < AdminController
  
  def login
    display_user = { :id => @user.id, :name => @user.name, :email => @user.email }
    render json: display_user
  end
  
end
