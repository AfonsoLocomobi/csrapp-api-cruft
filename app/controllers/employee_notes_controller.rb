class EmployeeNotesController < AdminController
  before_action :set_employee_note, only: [:show, :destroy]

  def index
    @employee_notes = EmployeeNote.where :employee_id => params[:employee_id]
    render json: @employee_notes
  end

  def create
    @employee_note = EmployeeNote.new(employee_note_params)
    @employee_note.employee_id = params[:employee_id]
    @employee_note.created_by_user_id = @user.id

    if @employee_note.save
      render json: @employee_note
    else
      render json: @employee_note.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @employee_note.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_note
      @employee_note = EmployeeNote.find(params[:note_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_note_params
      params.require(:employee_note).permit(:body)
    end
end
