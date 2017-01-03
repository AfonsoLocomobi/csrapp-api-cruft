class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.string :name
      t.string :abbreviation
      t.string :country

      t.timestamps
    end
    add_index :states, :name, unique: true
    add_index :states, :abbreviation, unique: true
  end
end
