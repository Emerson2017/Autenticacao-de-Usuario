ActiveAdmin.register User do
	  permit_params [:filial, :image, :nome_completo, :email, :password, :password_confirmation, :username, :Setor, :admin] 

	index do
		column :username
		column :email
		column :Setor
		actions
	end



 form do |f|  
      f.inputs "User" do
        f.input :nome_completo, :label => 'Nome Completo'
      	f.input :username, :label => 'Nome de Usuário'
        f.input :email, :label => 'Email'
        f.input :password, :label => 'Senha'
        f.input :password_confirmation, :label => 'Confirmar Senha'
        f.input :Setor, as: :select, :collection => ['Administrador', 'RH', 'Colaborador', 'Comercial', 
        	'Técnico', 'Financeiro', 'Diretoria', 'Visitante'], :label => 'Perfil'
        f.input :filial, as: :select, :collection => ['Rio De Janeiro, RJ', 'Manaus, AM', 'Vitória, ES']
        f.input :nascimento, :as => :date_time_picker,  datepicker_options: { min_date:  " 2013-10-8 " ,         max_date:  " + 3D " } 
        f.input :image
      end
      f.actions
    end


end
