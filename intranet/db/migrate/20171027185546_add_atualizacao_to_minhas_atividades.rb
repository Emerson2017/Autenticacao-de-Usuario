class AddAtualizacaoToMinhasAtividades < ActiveRecord::Migration[5.1]
  def change
    add_column :minhas_atividades, :atualizacao, :date
  end
end
