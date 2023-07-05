class AddIdrToRadunos < ActiveRecord::Migration[7.0]
  def change
    add_column :radunos, :idr, :integer
  end
end
