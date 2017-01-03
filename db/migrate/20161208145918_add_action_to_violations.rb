class AddActionToViolations < ActiveRecord::Migration[5.0]
  def change
    add_column :violations, :action, :string
  end
end
