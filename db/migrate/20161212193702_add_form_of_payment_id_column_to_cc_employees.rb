class AddFormOfPaymentIdColumnToCcEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :cc_employees, :form_of_payment_id, :integer
    add_foreign_key :cc_employees, :forms_of_payment, column: :form_of_payment_id, primary_key: :id
  end

end
