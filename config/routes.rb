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
    end
  end

  resources :users do
  end

  resources :columns do
    resources :comments, only: :create
   end

end
