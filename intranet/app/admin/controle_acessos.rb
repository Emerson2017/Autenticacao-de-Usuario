ActiveAdmin.register ControleAcesso do
	permit_params [:grupo, :Noticium]

  
		index do
		column :grupo
		actions
	end
	
	 form do |f|
    f.inputs "Controle de Acesso" do
           f.input :grupo, :label => 'Nome do Grupo'
        end

     tabs do 
      tab "Minhas Atividades" do
          f.inputs "Minhas Atividades" do
           f.input :Minhas_Atividades, as: :check_boxes, :collection => ['Criar', 'Visualizar', 'Editar', 'Deletar'], :label => 'Atividades'
         end 
       end

       tab "Mural de Atividades" do
    		 f.inputs "Mural de Atividades" do
           f.input :Mural_Atividades, as: :check_boxes, :collection => ['Criar', 'Visualizar', 'Editar', 'Deletar'], :label => 'Atividades'
          end
        end

        tab "Meu Perfil" do
          f.inputs "Meu Perfil" do
       		f.input :Meu_Perfil, as: :check_boxes, :collection => ['Criar', 'Visualizar', 'Editar', 'Deletar'], :label => 'Perfil'
          end
        end

        tab "Notícias" do
          f.inputs "Noticias" do
    		  f.input :Noticium, as: :check_boxes, :collection => ['Criar', 'Visualizar', 'Editar', 'Deletar'], :label => 'Notícias'
          end
        end
      end
    		f.actions
      end

end

# ERRO: Os métodos delete, create, read, edit, não estão sendo chamados quando os checkbox são selecionados.
# Dessa forma o controle de acesso não está ocorrendo.
