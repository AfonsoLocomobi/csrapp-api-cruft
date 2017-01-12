class RemoveAppealColumnFromViolationsTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :violations, :appeal, :string
  end
end
