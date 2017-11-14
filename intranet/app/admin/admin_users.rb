ActiveAdmin.register AdminUser do
permit_params [:email, :password, :password_confirmation] 

	index do
			column :username
			column :email
			actions
		end

	form do |f|
      f.inputs "Admin_User" do
        f.input :email, :label => 'Email'
        f.input :password, :label => 'Senha'
        f.input :password_confirmation, :label => 'Confirmar Senha'
      end
      f.actions
    end
end
