class RimuoviPartecipantiAggiungiArrayIscrittiARadunos < ActiveRecord::Migration[7.0]
  def change
    remove_column :radunos, :partecipanti
    add_column :radunos, :iscritti, :integer, array: true, default: []
  end
end
