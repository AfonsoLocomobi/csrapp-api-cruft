class StatusController < ApplicationController

  def status
    render :json => {:status => :ok}
  end

  
end
