Rails.application.routes.draw do
  resources :posts, only: [:index, :show]

  if defined? Admin::Engine
    mount Admin::Engine, at: '/admin'
  end
end
