class RemoveImageColumnsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :image5, :string
    remove_column :users, :image6, :string
    remove_column :users, :image7, :string
    remove_column :users, :image8, :string
    remove_column :users, :image9, :string
  end
end
