class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.integer :id_raduno
      t.string :email_partecipante

      t.timestamps
    end
  end
end
