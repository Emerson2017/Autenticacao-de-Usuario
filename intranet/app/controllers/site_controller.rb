class SiteController < ApplicationController
    before_action :authenticate_user!

	def index
		@noticia = Noticium.all
		@mural_atividades = MuralAtividade.all
	end

	def show
  	end
end
