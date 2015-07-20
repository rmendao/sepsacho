class PageControllerController < ApplicationController
	def monitor
		 @exploracao = Exploracao.all
		 @silosexp = Silo.find_by(params[:exploracao_id])
	end
end
