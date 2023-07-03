class CreateRadunos < ActiveRecord::Migration[7.0]
  def change
    create_table :radunos do |t|
      t.string :nome_darte_organizzatore
      t.string :descrizione
      t.date :data
      t.time :orario
      t.string :luogo

      t.timestamps
    end
  end
end
