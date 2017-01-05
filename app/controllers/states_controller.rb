class StatesController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authenticate

  def index
    @states = State.select :id, :name, :abbreviation, :country
    render json: @states
  end

  protected

  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      AuthToken.where(:token => token).first
    end
  end

end
