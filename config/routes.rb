Rails.application.routes.draw do
  resources :posts
  
  if defined? Admin::Engine
    mount BlogEngine::Engine, at: '/admin'
  end
end
