Rails.application.routes.draw do
  resources :contact_form
  resources :products
  devise_for :users
  root 'static_page#home'

  get '/about-us', to: 'static_page#about_us'

  get '/contact-us', to: 'static_page#contact_us'

  namespace :admin do
    resources :products
    resources :contact_forms
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
