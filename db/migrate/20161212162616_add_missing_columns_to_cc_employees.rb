class AddMissingColumnsToCcEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :cc_employees, :badge_prox_encode, :string
    add_column :cc_employees, :form_of_payment, :string
    add_column :cc_employees, :employment_type, :string
    add_column :cc_employees, :company, :string
    add_column :cc_employees, :location, :string
    add_column :cc_employees, :start_date, :date
    add_column :cc_employees, :supervisor_email, :string
    add_column :cc_employees, :job_type, :string
    add_column :cc_employees, :home_zip_code, :string
    add_column :cc_employees, :termination_code, :string
  end
end
