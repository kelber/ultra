Rails.application.routes.draw do


	resources :estados do
			resources :cidades  ,dependent: :destroy
	end

	resources :cidades
	resources :lojas


  get 'adminarea/index'

  devise_for :admins
  root 'welcome#index'

	
  get 'sobre', to: 'welcome#sobre', as: :sobre
	get 'franquias', to: 'welcome#franquias', as: :franquias
	get 'contato', to: 'welcome#contato', as: :contato
end



# Metodologia de Implatanção Sistema Ultravisao



#  5W2H
# What ? - > O que ?
# Why ? -> Porque ?
# Who ? -> Quem ?
# How ? -> Como ?
# How-much ? -> $$ ?
# When ? -> Quando ?
# Where ? -> Aonde ?

#################################################


# ULTRA - 1. Fase

# Welcome page c/ telas empresa,contato,franchising...etc
##### devise 
##### preparar matriz
## Cadastro de Estados
### Cadastro de Cidades - Nested
#### Cadastro de Lojas
##### Fazer Background de Mapa
######  Pronto
######## Deploy 
#########################################################
		###### PRONTO ###### 2x dias - ps. ajustar mapa detran concorrencia etc. ? x ROI





# ULTRABOOK - 2. Fase


# News -> Aberto ao Público e No Navbar
##   "Abertas + 15 lojas no Brasil !!"
### Noticias afins...


################### Suporte ######################
# Cadastrar Marca e Modelo
# Cadastrar Veículo
# Listagem de Veiculos para suporte dar o Ok completed_at
















