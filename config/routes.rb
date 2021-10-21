Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "prototypes#index"
  # ローカルホスト3000のプロトタイプのインデックスアクション
  # ルーティング・このURLが来たらこのコントローラーのこのアクションを動かすという仕組みを書く場所
  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
  resources :comments, only: :create 
  end
  resources :users, only: :show
  # resources :usersでrails routesを実行すると７つのアクションのパスが作られるが今回作らない、理由は無駄を省くためshowしか使わないのでonlyで指定OK
  # パスを作るためにresourcesを設定、prototypesは７つのアクション
  # usersコントローラーのパスが作られる、それをlinktoで使っている、onlyは「のみ」意味、showのパスしか作られない←rails routes
  # URIとURLの違いは、URLは、Web上にあるファイルの住所を示すもの。 URIは、Web上にあるファイルを示す総称のもの
  # 50 プロトタイプスコントローラーにはnew,createアクションしかない
  # そのためリソーシーズを用いて作るパスはnew,createだけで良い
end

