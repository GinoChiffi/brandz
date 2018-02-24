Rails.application.routes.draw do

  devise_for :brands,  controllers: {sessions: 'brands/sessions'}
  devise_for :users,  controllers: {sessions: 'users/sessions' }

  root 'pages#home'
  get 'about' => 'pages#about'
  get 'signup' => 'pages#signup'
  get 'login' => 'pages#login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
