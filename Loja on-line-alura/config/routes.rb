Rails.application.routes.draw do
  resources :setors
  get "produtos/busca", to: "produtos#busca", as: :busca_produto
  resources :produtos, only: [:new, :create, :destroy, :edit, :update]
  #delete "produtos/:id", to: "produtos#destroy", as: :produto
  #post "produtos", to:"produtos#create"
  #get "produtos/new", to: "produtos#new"
  root to: "produtos#index"
end
