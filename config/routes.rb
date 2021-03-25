Rails.application.routes.draw do
  root to: 'tops#index'
  # スコープを設定→controller
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }
  # ルーティングの変更　->controllerの前にスコープを経由する
  devise_scope :user do
    get 'login', to: 'users/sessions#new'
    post 'login', to: 'users/sessions#create'
    delete 'signout', to: 'users/sessions#destroy'
  end

  resources :addresses, only:[:index, :show]
end
