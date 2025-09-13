Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact', as: :contact
  post 'contact', to: 'contacts#create'
  get 'field', to: 'pages#field'
  get 'detail1', to: 'pages#detail1'
  get 'detail2', to: 'pages#detail2'
  get 'detail3', to: 'pages#detail3'
  get 'detail4', to: 'pages#detail4'
  get 'detail5', to: 'pages#detail5'
  get 'detail6', to: 'pages#detail6'
  get 'detail7', to: 'pages#detail7'
  get 'detail8', to: 'pages#detail8'
  get 'detail9', to: 'pages#detail9'
  get 'detail10', to: 'pages#detail10'

  get '404', to: 'errors#not_found'
  get '500', to: 'errors#internal_server'
  get '422', to: 'errors#unprocessable'
end
