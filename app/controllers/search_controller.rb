class SearchController < AdminController

  def find
  end


  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def cc_employee_params
      params.require(:cc_employee).permit(:ada_cerificate_expiration_date, :adjust_hire_date, :car_pool_expiration_date, :effective_status_change_date, :hire_date, :primary_assignment_expiration_date, :secondary_assignment_expiration_date, :temporary_expiration_date, :temporary_start_date, :termination_date, :badge_encode_number, :group_account_id, :primary_assignment_id, :secondary_assignment_id, :ada_certificate_number, :car_pool_number, :ccf_mail_code, :department_name, :division_institute, :email_address, :first_name, :last_name, :middle_initial, :name_suffix, :employee_number, :employement_status, :fte, :job_code, :job_title, :mobile_number, :monthly_fee, :secondary_email, :supervisor_employee_id, :supervisor_first_name, :supervisor_last_name, :valet_code, :notes, :form_of_payment_id)
    end


end
