class AddNomeCompletoToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :nome_completo, :string
  end
end
