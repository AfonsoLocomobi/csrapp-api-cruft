class RemoveNotesColumnFromEmployees < ActiveRecord::Migration[5.0]
  def change
    remove_column :employees, :notes, :text
  end
end
