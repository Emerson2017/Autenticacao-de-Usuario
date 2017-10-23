class CreateMuralAtividades < ActiveRecord::Migration[5.1]
  def change
    create_table :mural_atividades do |t|
      t.string :atividade

      t.timestamps
    end
  end
end
