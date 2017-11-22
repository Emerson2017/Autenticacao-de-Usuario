class AddGrupoToControleAcesso < ActiveRecord::Migration[5.1]
  def change
    add_column :controle_acessos, :grupo, :string
  end
end
