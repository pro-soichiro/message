Rails.application.routes.draw do
  # index以外の7つのアクションルート
  # resource :users
  # 7つのアクション
  # resources :users
  # ルーティングヘルパーのPrefixを変更したいとき
  # usersをcustomersに変更する例
  # resources :users,as: :customers
  # 対応するコントローラー名を変更する
  # 外部URIに表示される名前と内部で実際に使用するコントローラー名を異なるものとして見せることができる
  # resources :users,controller: :customers
  # URI側の表示を変えることができる。コントローラー名はそのままなのでcontrollerオプションの逆の作用
  resources :users,path: :customers

  get 'greetings/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
