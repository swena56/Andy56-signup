Rails.application.routes.draw do
  get 'notes/index'

  get 'products/:id', to: 'products#show', :as => :products
  devise_for :users, :controllers => { :registrations => 'registrations' }
  devise_scope :user do
    post 'pay', to: 'registrations#pay'
  end
  resources :users
  #root :to => 'visitors#index'
  root :to => 'notes#index'
end
