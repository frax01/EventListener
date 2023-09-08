class RemoveUserAndRadunoColumnsFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :user_id, :integer
    remove_column :events, :raduno_id, :integer
  end
end
