class CreateUtentes < ActiveRecord::Migration[7.0]
  def change
    create_table :utentes do |t|
      t.string :nome
      t.string :cognome
      t.date :data_di_nascita
      t.string :mail
      t.string :password

      t.timestamps
    end
  end
end
