Rails.application.routes.draw do
  get 'programming_practice/index'
  
  get 'notes/index'
  get 'notes/rails'
  get 'notes/heroku'

  get 'products/:id', to: 'products#show', :as => :products
  devise_for :users, :controllers => { :registrations => 'registrations' }
  devise_scope :user do
    post 'pay', to: 'registrations#pay'
  end
  resources :users
  root :to => 'visitors#index'
end
