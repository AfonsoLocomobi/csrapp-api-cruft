class AddVehicleTypeReferenceToVehicles < ActiveRecord::Migration[5.0]
  def change
    add_reference :vehicles, :vehicle_type, foreign_key: true
  end
end
