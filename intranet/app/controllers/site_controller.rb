class SiteController < ApplicationController
    before_action :authenticate_user!

	def index
		@noticia = Noticium.all
	end

	def show
  	end
end
