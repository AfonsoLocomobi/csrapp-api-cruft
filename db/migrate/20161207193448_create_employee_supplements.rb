class CreateEmployeeSupplements < ActiveRecord::Migration[5.0]
  def change
    create_table :employee_supplements do |t|
      t.date :primary_assignment_expiration_date
      t.date :secondary_assignment_expiration_date
      t.date :temporary_start_date
      t.date :temporary_expiration_date
      t.decimal :monthly_fee, precision: 5, scale: 2
      t.references :group_account, foreign_key: true
      t.string :car_pool_number
      t.date :car_pool_expiration_date
      t.string :ada_certificate_number
      t.date :ada_cerificate_expiration_date
      t.string :secondary_email
      t.string :mobile_number
      t.text :notes
      t.string :valet_code

      t.timestamps
    end
  end
end
