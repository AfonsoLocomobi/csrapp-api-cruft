class UserProfileLogController < AdminController

  def index
    @entries = UserProfileLogEntry.where(:agent_employee_id => params[:agent_employee_id]).order(created_at: :desc)
    render json: @entries
  end

end
