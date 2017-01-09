class StatesController < AdminController


  def index
    @states = State.select :id, :name, :abbreviation, :country
    render json: @states
  end


end
