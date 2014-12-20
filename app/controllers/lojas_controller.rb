class LojasController < ApplicationController

	before_action :find_loja, only: [:show, :edit, :update, :destroy]


	def index
		@lojas = Loja.all.order("created_at DESC")

	end

	def show
	end

	def edit
	end

	def new
		@loja = Loja.new
	end

	def create
		@loja = Loja.new(loja_params)
		if @loja.save
			redirect_to @loja, notice: "Loja Cadastrada com Sucesso"
		else
			render 'new'
		end
	end

	def update
		if @loja.update(loja_params)
			redirect_to @loja, notice: "Atualizado com Sucesso"
		else
			render 'edit'
		end
	end


	def destroy
		if @loja.destroy
				redirect_to lojas_path, notice: "Loja Deletada com Sucesso"
		end
	end










	private

	def find_loja
		@loja = Loja.find(params[:id])
	end

	def loja_params
		params.require(:loja).permit(:name, :cidade_id, :endereco, :telefone, :email, :owner, :mapa)

	end







end
