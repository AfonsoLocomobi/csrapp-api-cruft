class AddSilkroadUsernameToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :silkroad_username, :string, :default => nil, :null => true
  end
end
