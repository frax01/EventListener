class AggiungiArrayPartecipantiARadunos < ActiveRecord::Migration[7.0]
  def change
    add_column :radunos, :partecipanti, :integer, array: true, default: []
  end
end
