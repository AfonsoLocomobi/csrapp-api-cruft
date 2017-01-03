class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :employee_number
      t.string :employee_first_name
      t.string :employee_middle_initial
      t.string :employee_last_name
      t.string :employee_name_suffix
      t.date   :effective_status_change_date
      t.date   :termination_date
      t.string :employement_status
      t.date   :hire_date
      t.date   :adjust_hire_date
      t.string :department_name
      t.string :job_code
      t.string :job_title
      t.string :division_institute
      t.string :fte
      t.string :ccf_mail_code
      t.string :email_address
      t.string :badge_encode_number
      t.string :supervisor_first_name
      t.string :supervisor_last_name
      t.string :supervisor_employee_id

      t.timestamps
    end
  end
end
