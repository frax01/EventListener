class AddRadunoIdToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :raduno_id, :integer
  end
end
