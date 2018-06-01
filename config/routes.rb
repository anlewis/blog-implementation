Rails.application.routes.draw do
  root 'blogs#index'

  resources :blogs
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end

  mount_devise_token_auth_for 'User', at: 'auth'
end
