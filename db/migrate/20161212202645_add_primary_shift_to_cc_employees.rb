class AddPrimaryShiftToCcEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :cc_employees, :primary_shift, :string
  end
end
