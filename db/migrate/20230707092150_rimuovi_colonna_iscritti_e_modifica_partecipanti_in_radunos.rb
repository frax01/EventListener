class RimuoviColonnaIscrittiEModificaPartecipantiInRadunos < ActiveRecord::Migration[7.0]
  def up
    remove_column :radunos, :iscritti
    add_column :radunos, :partecipanti, :string
  end

  def down
    remove_column :radunos, :partecipanti
    add_column :radunos, :iscritti, :integer
  end
end
