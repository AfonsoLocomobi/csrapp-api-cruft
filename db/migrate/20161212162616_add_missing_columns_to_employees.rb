class AddMissingColumnsToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :badge_prox_encode, :string
    add_column :employees, :form_of_payment, :string
    add_column :employees, :employment_type, :string
    add_column :employees, :company, :string
    add_column :employees, :location, :string
    add_column :employees, :start_date, :date
    add_column :employees, :supervisor_email, :string
    add_column :employees, :job_type, :string
    add_column :employees, :home_zip_code, :string
    add_column :employees, :termination_code, :string
  end
end
