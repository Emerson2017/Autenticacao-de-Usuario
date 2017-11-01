class AddUserIdToMuralAtividades < ActiveRecord::Migration[5.1]
  def change
  		add_column :mural_atividades, :user_id, :integer
  end
end
