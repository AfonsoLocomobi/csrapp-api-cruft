class ViolationsController < AdminController
  before_action :set_violation, only: [:show, :edit, :update, :destroy]

  def index
    @violations = Violation.where :employee_id => params[:employee_id]
    render json: @violations
  end

  def show
    render json: @violation
  end


  def create
    @violation = Violation.new(violation_params)
    @violation.employee_id = params[:employee_id]

    if @violation.save
      render json: @violation
    else
      render json: @violation.errors, status: :unprocessable_entity
    end
  end

  def update
    if @violation.update(violation_params)
      render json: @violation
    else
      render json: @violation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @violation.destroy
    head :no_content
  end

  def amounts
    @violation_amounts = ViolationAmount.all
    render json: @violation_amounts
  end

  def types
    @violation_types = ViolationType.all
    render json: @violation_types
  end

  def actions
    @violation_actions = ViolationAction.all
    render json: @violation_actions
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_violation
      @violation = Violation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def violation_params
      params.require(:violation).permit(:violation_date, :violation_amount, :violation_type_id, :violation_number, :violation_action_id, :payment_status, :appeal)
    end

end
