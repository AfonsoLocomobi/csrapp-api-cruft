class ViolationsController < ApplicationController
  before_action :set_violation, only: [:show, :edit, :update, :destroy]

  def index
    @violations = Violation.where :cc_employee_id => params[:cc_employee_id]
    render json: @violations
  end

  def show
    render json: @violation
  end

  def new
    @violation = Violation.new :cc_employee_id => params[:cc_employee_id], :payment_status => :unpaid
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_violation
      @violation = Violation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def violation_params
      params.require(:violation).permit(:violation_date, :violation_amount, :violation_type_id, :violation_number, :action, :payment_status, :appeal, :cc_employee_id)
    end

end
