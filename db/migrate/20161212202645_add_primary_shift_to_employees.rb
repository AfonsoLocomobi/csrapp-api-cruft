class AddPrimaryShiftToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :primary_shift, :string
  end
end
