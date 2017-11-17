ActiveAdmin.register User do
	  permit_params [:email, :password, :password_confirmation, :username, :Setor, :admin] 

	index do
		column :username
		column :email
		column :Setor
		actions
	end



 form do |f|
      f.inputs "User" do
      	f.input :username, :label => 'Nome de Usuário'
        f.input :email, :label => 'Email'
        f.input :password, :label => 'Senha'
        f.input :password_confirmation, :label => 'Confirmar Senha'
        f.select :Setor, :Setor => ['Administrador', 'RH', 'Colaborador', 'Comercial', 
        	'Técnico', 'Financeiro', 'Diretoria', 'Visitante']
      end
      f.actions
    end
end
