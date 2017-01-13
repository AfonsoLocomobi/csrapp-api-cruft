class CreateUserProfileLogEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profile_log_entries do |t|
      t.integer :agent_employee_id, null: false
      t.string :action
      t.string :target
      t.integer :target_id
      t.string :old_value
      t.string :new_value
      t.text :description

      t.timestamps

    end

    add_foreign_key :user_profile_log_entries, :employees, column: :agent_employee_id

  end
end
