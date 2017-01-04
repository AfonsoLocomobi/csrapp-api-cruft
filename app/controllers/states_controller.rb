class StatesController < ApplicationController

  def index
    @states = State.select :id, :name, :abbreviation, :country
    render json: @states
  end

end
