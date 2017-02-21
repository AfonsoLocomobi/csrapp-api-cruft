class AddRecordOriginToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :record_origin, :string, :null => false, :default => nil
  end
end
