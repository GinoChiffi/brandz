Rails.application.routes.draw do


  resources :designers
  resources :articles
  devise_for :brands
  devise_for :users

  root 'brands#index'
  get 'about' => 'pages#about'
  get 'signup' => 'pages#signup'
  get 'login' => 'pages#login'
  get ':name' =>'brands#show', as: 'brand'
  #'brands/show'
  get 'brands/index'
  get 'designer/indexes' => 'designerindexes#index'
  get 'article/indexes' => 'articleindexes#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
