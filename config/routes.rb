Rails.application.routes.draw do
  root to: 'tops#index'
  resources :addresses, only:[:index]
end
