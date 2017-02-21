class CreateEmployeeNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :employee_notes do |t|
      t.text :body, :null => false
      t.integer :created_by_user_id, :null => false
      t.references :employee, foreign_key: true, :null => false

      t.timestamps
    end

    add_foreign_key :employee_notes, :users, column: :created_by_user_id
  end
end
