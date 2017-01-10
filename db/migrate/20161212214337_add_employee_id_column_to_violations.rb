class AddEmployeeIdColumnToViolations < ActiveRecord::Migration[5.0]
  def change
    add_column :violations, :employee_id, :integer
    add_foreign_key :violations, :employees, column: :employee_id, primary_key: :id
  end
end
