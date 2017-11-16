ActiveAdmin.register ControleAcesso do
	before_action :set_usuarios, only: [:show, :edit, :update, :destroy]
	permit_params [:user]

	def usuarios(user)
		index do
			column :users.all
			actions
		end 

	end

end
