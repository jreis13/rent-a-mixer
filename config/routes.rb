Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/about_us', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  resources :services, :contact, :about_us, :home
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
