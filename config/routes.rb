Rails.application.routes.draw do
  resources :menus
  resources :contact_forms, except: [:index, :show, :update, :destroy]
  resources :products, only: [:show,:index]
  devise_for :users
  root 'static_page#home'

  get '/about-us', to: 'static_page#about_us'

  get '/contact-us', to: 'static_page#contact_us'

  namespace :admin do
    resources :products
    resources :contact_forms
    resources :menus
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
