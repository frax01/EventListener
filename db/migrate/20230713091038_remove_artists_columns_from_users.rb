class RemoveArtistsColumnsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :remove_columns_from_users, :string
    remove_column :users, :artist5, :string
    remove_column :users, :artist6, :string
    remove_column :users, :artist7, :string
    remove_column :users, :artist8, :string
    remove_column :users, :artist9, :string
  end
end
