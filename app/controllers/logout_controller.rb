class LogoutController < ApplicationController

  def logout
    render :nothing => true, :status => :unauthorized
  end

  
end
