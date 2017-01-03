class CreateViolationAmounts < ActiveRecord::Migration[5.0]
  def change
    create_table :violation_amounts do |t|
      t.decimal :amount, precision: 5, scale: 2

      t.timestamps
    end
  end
end
