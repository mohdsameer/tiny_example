Rails.application.routes.draw do
  root 'welcome#index'
  resources :blogs, only: [:show, :create]
end
