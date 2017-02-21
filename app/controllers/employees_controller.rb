class EmployeesController < AdminController

  before_action :set_employee, only: [:show, :edit, :update, :destroy]


  def index
    @employees = Employee.paginate( :page => params[:page] )
    render json: @employees

  end

  def show
    render json: @employee
  end


  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      render :show, status: :created, location: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  def update
    if @employee.update(employee_params)
      render json: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @employee.destroy
    head :no_content
  end

  def find
    
    employees = params[:vehicle] ? Employee.where(search_criteria).joins(:vehicles) :
                                   Employee.where(search_criteria)

    vehicles = Vehicle.where(search_criteria).joins(:employee)

    render json: { :employees => employees, :vehicles => vehicles }
  end
    

  private
  

    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:ada_cerificate_expiration_date, :adjust_hire_date, :car_pool_expiration_date, :effective_status_change_date, :hire_date, :primary_assignment_expiration_date, :secondary_assignment_expiration_date, :temporary_expiration_date, :temporary_start_date, :termination_date, :badge_encode_number, :group_account_id, :primary_assignment_id, :secondary_assignment_id, :ada_certificate_number, :car_pool_number, :ccf_mail_code, :department_name, :division_institute, :email_address, :first_name, :last_name, :middle_initial, :name_suffix, :employee_number, :employement_status, :fte, :job_code, :job_title, :mobile_number, :monthly_fee, :secondary_email, :supervisor_employee_id, :supervisor_first_name, :supervisor_last_name, :valet_code, :form_of_payment_id)
    end

    def vehicle_params
      params.require(:vehicle).permit(:license_plate_number, :state_id, :temporary_plate, :vehicle_type, :year, :vehicle_model_id, :vehicle_type_id, :color, :avi_sticker_number, :parking_lot_sticker_number, :leed_qualified, :employee_id)
    end

    def search_criteria
      search_criteria = {}
      if params[:employee]
        search_criteria[:employees] = employee_params.to_h
      end
      if params[:vehicle]
        search_criteria[:vehicles] = vehicle_params.to_h
      end

      return search_criteria
    end
end
