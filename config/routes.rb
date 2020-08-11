Rails.application.routes.draw do
  resources :frases, only: [ :index, :show ]
end
