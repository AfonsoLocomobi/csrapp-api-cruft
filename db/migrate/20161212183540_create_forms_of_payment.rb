class CreateFormsOfPayment < ActiveRecord::Migration[5.0]
  def change
    create_table :forms_of_payment do |t|
      t.string :name
    end
  end
end
