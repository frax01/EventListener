class RemoveIdrFromRadunos < ActiveRecord::Migration[7.0]
  def change
    remove_column :radunos, :idr, :integer
  end
end
