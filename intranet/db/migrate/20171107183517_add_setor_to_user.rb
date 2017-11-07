class AddSetorToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :Setor, :string
  end
end
