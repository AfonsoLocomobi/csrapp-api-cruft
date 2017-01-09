class AdminController < ActionController::API
  include ActionController::HttpAuthentication::Basic::ControllerMethods

  before_action :authenticate

  protected
    def authenticate
      @user = authenticate_or_request_with_http_basic do |email, password|
        user = User.find_by_email(email)
        user && user.authenticate(password)          
      end
    end
     
end
