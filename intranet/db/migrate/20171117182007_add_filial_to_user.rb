class AddFilialToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :filial, :string
  end
end
