class CcEmployeesController < AdminController

  before_action :set_cc_employee, only: [:show, :edit, :update, :destroy]


  # GET /cc_employees
  # GET /cc_employees.json
  def index
    @cc_employees = CcEmployee.paginate( :page => params[:page] )
    render json: @cc_employees

  end

  # GET /cc_employees/1
  # GET /cc_employees/1.json
  def show
    render json: @cc_employee
  end


  # POST /cc_employees
  # POST /cc_employees.json
  def create
    @cc_employee = CcEmployee.new(cc_employee_params)

    respond_to do |format|
      if @cc_employee.save
        format.json { render :show, status: :created, location: @cc_employee }
      else
        format.json { render json: @cc_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cc_employees/1
  # PATCH/PUT /cc_employees/1.json
  def update
    respond_to do |format|
      if @cc_employee.update(cc_employee_params)
        format.json { render :show, status: :ok, location: @cc_employee }
      else
        format.json { render json: @cc_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cc_employees/1
  # DELETE /cc_employees/1.json
  def destroy
    @cc_employee.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  def find
    
    # employees = CcEmployee.where(search_criteria).joins(:vehicles).select('cc_employees.*, vehicles.*')
    employees = params[:vehicle] ? CcEmployee.where(search_criteria).joins(:vehicles) :
                                   CcEmployee.where(search_criteria)

    vehicles = Vehicle.where(search_criteria).joins(:cc_employee)

    render json: { :cc_employees => employees, :vehicles => vehicles }
  end
    

  private
  

    # Use callbacks to share common setup or constraints between actions.
    def set_cc_employee
      @cc_employee = CcEmployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cc_employee_params
      params.require(:cc_employee).permit(:ada_cerificate_expiration_date, :adjust_hire_date, :car_pool_expiration_date, :effective_status_change_date, :hire_date, :primary_assignment_expiration_date, :secondary_assignment_expiration_date, :temporary_expiration_date, :temporary_start_date, :termination_date, :badge_encode_number, :group_account_id, :primary_assignment_id, :secondary_assignment_id, :ada_certificate_number, :car_pool_number, :ccf_mail_code, :department_name, :division_institute, :email_address, :first_name, :last_name, :middle_initial, :name_suffix, :employee_number, :employement_status, :fte, :job_code, :job_title, :mobile_number, :monthly_fee, :secondary_email, :supervisor_employee_id, :supervisor_first_name, :supervisor_last_name, :valet_code, :notes, :form_of_payment_id)
    end

    def vehicle_params
      params.require(:vehicle).permit(:license_plate_number, :state_id, :temporary_plate, :vehicle_type, :year, :vehicle_model_id, :vehicle_type_id, :color, :avi_sticker_number, :parking_lot_sticker_number, :leed_qualified, :cc_employee_id)
    end

    def search_criteria
      search_criteria = {}
      if params[:cc_employee]
        search_criteria[:cc_employees] = cc_employee_params.to_h
      end
      if params[:vehicle]
        search_criteria[:vehicles] = vehicle_params.to_h
      end

      return search_criteria
    end
end
