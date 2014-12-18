class EstadosController < ApplicationController

	before_action :find_estado, only: [:show]

	 #  before_action :authenticate_admin! 

	def index
		@estados = Estado.all

	end

	def show
	end

  def new
  	@estado = Estado.new
  end

  def create
  	@estado = Estado.new(estado_params)
  	if @estado.save
  		redirect_to @estado ,notice: "Cadastrado com Sucesso"
  	else
  		render 'new'
  	end

  end


  private

  def find_estado
  	@estado = Estado.find(params[:id])

  end

  def estado_params
  	params.require(:estado).permit(:name)
  end






end
