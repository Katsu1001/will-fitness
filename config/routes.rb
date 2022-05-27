Rails.application.routes.draw do
  get 'columns/index'
  devise_for :users
  root to:'toppages#index'

  get 'users/index'
  get 'toppages/index'

  resources :toppages, only: :index do
    collection do
      get 'privacy_policy'
      get 'regulation'
      get 'contact_us'
      get 'administrator_info'
    end
  end

  resources :columns do
  end

  resources :users do
  end

end
