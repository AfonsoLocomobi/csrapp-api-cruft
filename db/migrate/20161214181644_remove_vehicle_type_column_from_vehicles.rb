class RemoveVehicleTypeColumnFromVehicles < ActiveRecord::Migration[5.0]
  def change
    remove_column :vehicles, :vehicle_type, :string
  end
end
