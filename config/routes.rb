Rails.application.routes.draw do
  resources :remuneracoes
  resources :turnos
  resources :funcionarios

  root to: "home#index"
end
