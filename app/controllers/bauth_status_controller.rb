class BauthStatusController < ApplicationController
  include ActionController::HttpAuthentication::Basic::ControllerMethods


  http_basic_authenticate_with name: 'locomobi', password: '37cg431z'

  def status
    render :json => {:status => :ok}
  end

  def logout
    render :nothing => true, :status => :unauthorized
  end
  
end
