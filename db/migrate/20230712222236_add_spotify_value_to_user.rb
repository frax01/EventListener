class AddSpotifyValueToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :image, :string
    add_column :users, :artist0, :string
    add_column :users, :artist1, :string
    add_column :users, :artist2, :string
    add_column :users, :artist3, :string
    add_column :users, :artist4, :string
    add_column :users, :artist5, :string
    add_column :users, :artist6, :string
    add_column :users, :artist7, :string
    add_column :users, :artist8, :string
    add_column :users, :artist9, :string
    add_column :users, :image0, :string
    add_column :users, :image1, :string
    add_column :users, :image2, :string
    add_column :users, :image3, :string
    add_column :users, :image4, :string
    add_column :users, :image5, :string
    add_column :users, :image6, :string
    add_column :users, :image7, :string
    add_column :users, :image8, :string
    add_column :users, :image9, :string
    add_column :users, :is_artist, :boolean, default: false
  end
end
