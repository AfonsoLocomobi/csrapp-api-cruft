class SessionController < ApplicationController

  STATUS_OK = 0
  STATUS_BAD_LOGIN = 1
  STATUS_TOKEN_NOT_FOUND = 2

  def login
    user = User.find_by_email(params[:email])
    if !user then
      render json: { :status => 'fool' }
    elsif user && user.authenticate(params[:password])
      response_user = { :id => user.id, name: user.name,  email: user.email}

      auth_token = AuthToken.create! :token => generate_auth_token(), :user_id => user.id, last_access: DateTime.now 
      
      render json: { :user => response_user, :token => auth_token.token, :status => STATUS_OK }
    else
      render json: { :user => nil, :token => nil, :status => STATUS_BAD_LOGIN }
    end
      
  end

  def logout
    auth_token = AuthToken.find_by_token(params[:token])

    if auth_token then
      auth_token.destroy!
      render json: { :status => STATUS_OK }
    else
      render json: { :status => STATUS_TOKEN_NOT_FOUND }
    end

  end

  private

  def session_params
    params.permit(:email, :password, :token)
  end

  def generate_auth_token
    SecureRandom.uuid
  end

end
