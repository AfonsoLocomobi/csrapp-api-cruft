class ChangeValetCodeColumnType < ActiveRecord::Migration[5.0]
  def change
    change_table :employees do |t|
      t.change :valet_code, :boolean
    end
  end
end
