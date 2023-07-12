class AddOmniauthToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :status, :string
    
    # setting uid as a key
    add_index :users, :uid, unique: true
  end
end
