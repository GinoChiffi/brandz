Rails.application.routes.draw do


  resources :locations
  get 'users/index'

  get 'users/show'

  resources :designers
  resources :articles
  devise_for :brands
  devise_for :users

  root 'brands#index'
  get 'about' => 'pages#about'
  get 'signup' => 'pages#signup'
  get 'login' => 'pages#login'
  get ':name' =>'brands#show', as: 'brand'
  get ':id' =>'users#show', as: 'id'

  #'brands/show'
  get 'brands/index'
  get 'designer/indexes' => 'designerindexes#index'
  get 'article/indexes' => 'articleindexes#index'

  resources :brands do
    member  do
      get :follow
      get :unfollow

    end

    end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
