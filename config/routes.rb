Rails.application.routes.draw do
  resources :polls do
    resources :options
  end
  post 'search' => 'visualization#show'

  resources :welcome, only: %i[index]

  root 'welcome#index'
end
