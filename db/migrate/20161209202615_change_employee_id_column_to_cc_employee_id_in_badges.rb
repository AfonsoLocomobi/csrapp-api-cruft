class ChangeEmployeeIdColumnToCcEmployeeIdInBadges < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :badges, :employees
    add_reference :badges, :cc_employee, index: true, foreign_key: true
  end
end
