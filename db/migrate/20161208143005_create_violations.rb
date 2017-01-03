class CreateViolations < ActiveRecord::Migration[5.0]
  def change
    create_table :violations do |t|
      t.date :violation_date
      t.decimal :violation_amount, precision: 5, scale: 2
      t.references :violation_type, foreign_key: true
      t.string :violation_number
      t.string :payment_status
      t.string :appeal

      t.timestamps
    end
  end
end
