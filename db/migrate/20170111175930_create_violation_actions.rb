class CreateViolationActions < ActiveRecord::Migration[5.0]
  def change
    create_table :violation_actions do |t|
      t.string :name

      t.timestamps
    end

    remove_column :violations, :action, :string
    add_column :violations, :violation_action_id, :integer, :null => false
    add_foreign_key :violations, :violation_actions, column: :violation_action_id, primary_key: :id

  end
end
