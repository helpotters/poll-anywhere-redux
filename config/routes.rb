Rails.application.routes.draw do
  resources :polls
  post 'search' => 'visualization#show'

  resources :welcome, only: %i[index]

  root 'welcome#index'
end
