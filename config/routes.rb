Rails.application.routes.draw do
  resources :polls
  root 'polls#new'
  # NOTE: Role selection
end
