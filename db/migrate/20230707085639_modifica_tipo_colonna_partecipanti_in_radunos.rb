class ModificaTipoColonnaPartecipantiInRadunos < ActiveRecord::Migration[7.0]
    
    def up
      change_column :radunos, :partecipanti, :integer, array: true, default: []
    end
  
    def down
      change_column :radunos, :partecipanti, :integer, array: false, default: nil
    end
 
end
