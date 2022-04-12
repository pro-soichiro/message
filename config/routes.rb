Rails.application.routes.draw do
  # index以外の7つのアクションルート
  # resource :users
  # 7つのアクション
  resources :users

  get 'greetings/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
