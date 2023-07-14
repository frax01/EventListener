class AddUserToRaduno < ActiveRecord::Migration[7.0]
  def change
    add_reference :radunos, :user, null: false, foreign_key: true
  end
end
