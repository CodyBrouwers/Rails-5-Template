Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homepage#index'

  resources :users

  controller :sessions do
    get     :new,     path: '/login',   as: "login"
    post    :create,  path: '/login',   as: "create_login"
    delete  :destroy, path: '/logout',  as: "logout"
  end
  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
