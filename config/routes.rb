Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  get 'session/create'
  get 'session/destroy'
  resources :polls do
    resources :options
  end
  post 'search' => 'visualization#show'

  resources :welcome, only: %i[index]

  root 'welcome#index'
end
