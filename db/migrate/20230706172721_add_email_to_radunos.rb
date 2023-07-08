class AddEmailToRadunos < ActiveRecord::Migration[7.0]
  def change
    add_column :radunos, :email, :string
  end
end
