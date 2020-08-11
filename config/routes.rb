Rails.application.routes.draw do
  devise_for :users
  resources :frases, only: [ :index, :show ]
end
