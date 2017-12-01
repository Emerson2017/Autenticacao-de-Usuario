class EditarPerfilController < ApplicationController
	def index
		@user = User.new
	end
end
