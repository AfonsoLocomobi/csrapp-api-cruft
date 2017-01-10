class AddFormOfPaymentIdColumnToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :form_of_payment_id, :integer
    add_foreign_key :employees, :forms_of_payment, column: :form_of_payment_id, primary_key: :id
  end

end
