class RimuoviColonnaPartecipantiDaRadunos < ActiveRecord::Migration[7.0]
  def change
    remove_column :radunos, :partecipanti
  end
end
