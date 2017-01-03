class AddEmployeeSupplementIdColumnToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_reference :employees, :employee_supplement, foreign_key: true
  end
end
