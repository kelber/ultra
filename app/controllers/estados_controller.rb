class EstadosController < ApplicationController

	before_action :find_estado, only: [:show, :edit, :update, :destroy]

#
#  Nao esquecer de ligar.
##############################################################
	before_action :authenticate_admin! , except: [:index, :show]

	def index
		@estados = Estado.all.order("name ASC")
  #  @cidades = Cidade.all
	end

	def show
      @estado = Estado.find(params[:id])
      @cidades = @estado.cidades.order("name ASC")
	end

  def edit
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

  def update
    if @estado.update(estado_params)
      redirect_to @estado, notice: "Atualizado com Sucesso"
    else
      render 'edit'
    end
  end

  def destroy
    if @estado.destroy
      redirect_to estados_path , notice: "Deletado com Sucesso"
    else
      render 'show'
    end
  end




  private

  def find_estado
  	@estado = Estado.find(params[:id])

  end

  def estado_params
  	params.require(:estado).permit(:name , :cidade_id)
  end






end
