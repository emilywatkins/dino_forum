Rails.application.routes.draw do
  root :to => 'topics#index'

  resources :topics do
    resources :discussions
  end

  resources :discussions do
    resources :posts
  end
end
