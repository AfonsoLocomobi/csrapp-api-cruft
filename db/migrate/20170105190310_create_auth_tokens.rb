class CreateAuthTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :auth_tokens do |t|
      t.string :token
      t.references :user, foreign_key: true
      t.timestamp :last_access

      t.timestamps

    end

    add_index :auth_tokens, :token, unique:  true

  end

end
