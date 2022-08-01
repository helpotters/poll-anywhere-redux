Rails.application.routes.draw do
  resources :polls
  resources :welcome, only: %i[index]

  root 'welcome#index'
end
