class ChangeBadgeEncodeNumberColumnToIntegerInEmployeesAndBadges < ActiveRecord::Migration[5.0]
  def change
    change_column :employees, :badge_encode_number, :integer
    change_column :badges, :badge_encode_number, :integer

  end
end
