class CreateControleAcessos < ActiveRecord::Migration[5.1]
  def change
    create_table :controle_acessos do |t|

      t.timestamps
    end
  end
end
