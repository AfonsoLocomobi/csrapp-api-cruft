class AddEmployeeIdColumnToViolations < ActiveRecord::Migration[5.0]
  def change
    add_column :violations, :cc_employee_id, :integer
    add_foreign_key :violations, :cc_employees, column: :cc_employee_id, primary_key: :id
  end
end
