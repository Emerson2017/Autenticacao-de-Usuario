ActiveAdmin.register ControleAcesso do
	permit_params [:grupo]

		index do
		column :grupo
		actions
	end


	
	 form do |f|
      f.inputs "ControleAcesso" do
      	 f.input :grupo, :label => 'Registrar Novo Grupo'
      	 hr
         f.input :Minhas_Atividades, as: :check_boxes, :collection => ['Criar', 'Visualizar', 'Editar', 'Deletar']
  		hr
  		 f.input :Mural_Atividades, as: :check_boxes, :collection => ['Criar', 'Visualizar', 'Editar', 'Deletar']
  		hr
  		f.input :Meu_Perfil, as: :check_boxes, :collection => ['Criar', 'Visualizar', 'Editar', 'Deletar']
  		hr
  		f.input :Noticias, as: :check_boxes, :collection => ['Criar', 'Visualizar', 'Editar', 'Deletar']
  		end

  		f.actions
    end

end
