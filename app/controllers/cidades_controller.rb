class CidadesController < ApplicationController


	


	def show
		@cidade = Cidade.find(params[:id])
	end

	def new
		@cidade = Cidade.new
	end


	def create
		@cidade = Cidade.new(cidade_params)
		if @cidade.save
			redirect_to @cidade
		else
			render 'new' 
		end
	end


	private

	def cidade_params
		params.require(:cidade).permit(:name, :estado_id)
	end



end
