class SiteController < ApplicationController
    before_action :authenticate_user!

	def index
		@noticia = Noticium.all
		@mural_atividades = MuralAtividade.all
		@minhas_atividades = MinhasAtividade.all
		@user = User.new
	end

	def show
  	end
end
