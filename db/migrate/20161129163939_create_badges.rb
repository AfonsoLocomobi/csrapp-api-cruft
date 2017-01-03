class CreateBadges < ActiveRecord::Migration[5.0]
  def change
    create_table :badges do |t|
      t.string :employee_number, null: false
      t.string :last_name
      t.string :first_name
      t.string :middle_initial
      t.string :badge_encode_number
      t.string :organizational_id
      t.string :status_flag

      t.timestamps
    end

    # add_index :badges, :badge_encode_number, :unique => true
  end
end
