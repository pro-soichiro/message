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
  # resources :users,path: :customers
  # リソースフルパスにおける、デフォルトのnew、editなどのパス構成名を変更できる
  # ただし、対応するアクションを変えるわけではない。パス名のみの変更
  # resources :users, path_names: { new: 'first', edit:'change' }
  # リソースフルルートの7つのアクションルートのうち指定したアクションのみを生成
  # resources :users, only: [:index]
  # リソースフルルートのうち、指定したアクションのルートを除外する
  # resources :users, except: [:index,:new,:create]
  # URIの特定の拡張子で識別されるフォーマットパラメーターの指示について必須・無効を指定する
  # resources :users, format: false
  # パラメーターの内容を制限する。エラー時にはActionController::UrlGenerationError例外を発生させる。
  # 正規表現「/[1-9]/」を使用し、idパラメーターの値を1~9の値に制限する例
  # resources :users,constraints: {id: /[1-9]/}
  # 検索機能（コレクションルート）とダウンロード機能（メンバールート）をonオプションを使用し実装する。
  resources :users do
    get :search, on: :collection
    get :download, on: :member
  end

  get 'greetings/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
