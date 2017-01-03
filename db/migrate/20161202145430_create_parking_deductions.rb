class CreateParkingDeductions < ActiveRecord::Migration[5.0]
  def change
    create_table :parking_deductions do |t|
      t.string :record_type
      t.string :employee_number
      t.string :process_level
      t.string :deduction_code
      t.decimal :deduction_amount, precision: 10, scale: 2
      t.date :pay_end_date

      t.timestamps
    end
  end
end
