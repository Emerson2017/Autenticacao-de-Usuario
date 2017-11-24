Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  resources :controle_acessos
  resources :minhas_atividades
  resources :mural_atividades
  resources :noticia
  resources :site
  devise_for :users




  
  get 'welcome/index'
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
