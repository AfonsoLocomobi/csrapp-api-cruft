class ViolationsController < AdminController
  before_action :set_violation, only: [:show, :edit, :update, :destroy]

  def index
    @violations = Violation.where :employee_id => params[:employee_id]
    render json: @violations
  end

  def show
    render json: @violation
  end

  def new
    @violation = Violation.new :employee_id => params[:employee_id], :payment_status => :unpaid
    render json: @violation
  end

  def create
    @violation = Violation.new(violation_params)

    respond_to do |format|
      if @violation.save
        format.json { render :show, status: :created, location: @violation }
      else
        format.json { render json: @violation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @violation.update(violation_params)
        format.json { render :show, status: :ok, location: @violation }
      else
        format.json { render json: @violation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @violation.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  def amounts
    @violation_amounts = ViolationAmount.all
    render json: @violation_amounts
  end

  def types
    @violation_types = ViolationType.all
    render json: @violation_types
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_violation
      @violation = Violation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def violation_params
      params.require(:violation).permit(:violation_date, :violation_amount, :violation_type_id, :violation_number, :action, :payment_status, :appeal, :employee_id)
    end

end
