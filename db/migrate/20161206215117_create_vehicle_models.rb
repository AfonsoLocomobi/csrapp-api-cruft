class CreateVehicleModels < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_models do |t|
      t.string :manufacturer
      t.string :model

      t.timestamps
    end
  end
end
