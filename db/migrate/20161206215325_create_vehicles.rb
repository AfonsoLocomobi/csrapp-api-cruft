class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :license_plate_number
      t.references :state, foreign_key: true
      t.boolean :temporary_plate
      t.string :vehicle_type
      t.integer :year
      t.references :vehicle_model, foreign_key: true
      t.string :color
      t.string :avi_sticker_number
      t.string :parking_lot_sticker_number
      t.string :leed_qualified

      t.timestamps
    end
  end
end
