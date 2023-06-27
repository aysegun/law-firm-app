Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'field', to: 'pages#field'
  get 'detail', to: 'pages#detail'

  get '404', to: 'errors#not_found'
  get '500', to: 'errors#internal_server'
  get '422', to: 'errors#unprocessable'
end
