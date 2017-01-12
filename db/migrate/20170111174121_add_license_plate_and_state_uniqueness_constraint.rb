class AddLicensePlateAndStateUniquenessConstraint < ActiveRecord::Migration[5.0]
  def change
    add_index :vehicles, [:license_plate_number, :state_id], :unique => true
  end
end
