class AddRequiredFieldUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nome, :string
    add_column :users, :cognome, :string
    add_column :users, :data_di_nascita, :date
  end
end
