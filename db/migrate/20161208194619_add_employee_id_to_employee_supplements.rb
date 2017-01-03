class AddEmployeeIdToEmployeeSupplements < ActiveRecord::Migration[5.0]
  def change
    add_reference :employee_supplements, :employee, foreign_key: true
  end
end
