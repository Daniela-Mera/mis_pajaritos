Rails.application.routes.draw do
  resources :fonos
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #tenia antes de instalar devise
    get "/", to: "pajarito#index"
    get "/detalle/:uid", to: "pajarito#detalle"

  #generados por devise
    #get 'home/index'
    #root to: "home#index"
  #los reemplazo por:
    get 'pajarito/index'
    root to: "pajarito#index"

  #para ir a ver listado de todas las aves
    get "/vertodas", to:"pajarito#vertodas"

end
