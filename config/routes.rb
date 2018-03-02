Rails.application.routes.draw do


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


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
