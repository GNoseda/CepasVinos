Rails.application.routes.draw do
  resources :cepas
  resources :vinos
  root 'cepas#index'
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
