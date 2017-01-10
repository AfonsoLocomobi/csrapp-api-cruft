class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.date :ada_cerificate_expiration_date
      t.date :adjust_hire_date
      t.date :car_pool_expiration_date
      t.date :effective_status_change_date
      t.date :hire_date
      t.date :primary_assignment_expiration_date
      t.date :secondary_assignment_expiration_date
      t.date :temporary_expiration_date
      t.date :temporary_start_date
      t.date :termination_date
      t.integer :badge_encode_number
      t.references :group_account, foreign_key: true
      t.integer :primary_assignment_id
      t.integer :secondary_assignment_id
      t.string :ada_certificate_number
      t.string :car_pool_number
      t.string :ccf_mail_code
      t.string :department_name
      t.string :division_institute
      t.string :email_address
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.string :name_suffix
      t.string :employee_number
      t.string :employment_status
      t.string :fte
      t.string :job_code
      t.string :job_title
      t.string :mobile_number
      t.decimal :monthly_fee, precision: 5, scale: 2
      t.string :secondary_email
      t.string :supervisor_employee_id
      t.string :supervisor_first_name
      t.string :supervisor_last_name
      t.string :valet_code
      t.text :notes

      t.timestamps
    end

    add_foreign_key :employees, :assignments, column: :primary_assignment_id
    add_foreign_key :employees, :assignments, column: :secondary_assignment_id

    add_index :employees, :employee_number, unique: true
  end
end
