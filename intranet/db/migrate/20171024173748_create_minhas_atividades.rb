class CreateMinhasAtividades < ActiveRecord::Migration[5.1]
  def change
    create_table :minhas_atividades do |t|
      t.string :atividade
      t.string :responsavel

      t.timestamps
    end
  end
end
