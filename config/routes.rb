Rails.application.routes.draw do

  devise_for :users
  root to:'toppages#index'

  get 'toppages/index'
  get 'users/index'
  get 'columns/index'

  resources :toppages, only: :index do
    collection do
      get 'to_do_list'
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
