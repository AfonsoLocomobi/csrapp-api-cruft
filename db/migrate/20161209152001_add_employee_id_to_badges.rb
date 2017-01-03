class AddEmployeeIdToBadges < ActiveRecord::Migration[5.0]
  def change
    add_reference :badges, :employee, foreign_key: true
  end
end
