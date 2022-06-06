Rails.application.routes.draw do

  devise_for :users
  root to:'toppages#index'

  get 'toppages/index'
  get 'users/index'
  get 'columns/index'

  resources :toppages, only: :index do
    collection do
      get 'todolist'
      get 'privacy_policy'
      get 'regulation'
      get 'contact_us'
      get 'administrator_info'
      get 'search'
    end
  end

  resources :users do
  end

  resources :columns do
    collection do
      get 'search'
    end

    resources :comments, only: :create
   end

end
