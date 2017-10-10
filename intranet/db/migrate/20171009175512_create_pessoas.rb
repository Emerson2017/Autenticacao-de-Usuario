class CreatePessoas < ActiveRecord::Migration[5.1]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :telefone
      t.string :endereco

      t.timestamps
    end
  end
end
