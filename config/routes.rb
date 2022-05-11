Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #tenia de antes de instalar devise
  get "/", to: "pajarito#index"
  get "/detalle/:uid", to: "pajarito#detalle"

  #generados por devise
  #get 'home/index'
  #root to: "home#index"
  #los reemplazo por:
  get 'pajarito/index'
  root to: "pajarito#index"

end
