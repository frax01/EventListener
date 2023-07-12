class AddOmniauthToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :provider, :string, default: "spotify"
    add_column :users, :uid, :string#, default: "false.micucci"
  end
end
