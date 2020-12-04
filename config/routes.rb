Rails.application.routes.draw do
  root :to => 'blogs#index'
  devise_for :users
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
