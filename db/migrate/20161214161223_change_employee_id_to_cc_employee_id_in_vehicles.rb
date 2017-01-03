class ChangeEmployeeIdToCcEmployeeIdInVehicles < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :vehicles, :employees
    remove_column :vehicles, :employee_id

    add_column :vehicles, :cc_employee_id, :integer, :null => false
    add_foreign_key :vehicles, :cc_employees, column: :cc_employee_id, primary_key: :id

  end
end
