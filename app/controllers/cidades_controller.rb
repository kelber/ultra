class CidadesController < ApplicationController

	before_action :find_cidade, only: [:show, :destroy] 
	

	def index
		@cidade = Cidade.all
		@lojas = Loja.all

	end

	def show
		@lojas = Loja.all
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

	def destroy
		@cidade = Cidade.find(params[:id])
    if @cidade.destroy
      redirect_to estados_path , notice: "Deletado com Sucesso"
    else
      render 'show'
    end
  end





	private

	def find_cidade
		@cidade = Cidade.find(params[:id])
	end

	def cidade_params
		params.require(:cidade).permit(:name, :estado_id, :loja_id)
	end



end
