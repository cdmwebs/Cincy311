CincyService::Application.routes.draw do
  resources :calls, only: :index

  root to: 'high_voltage/pages#show', id: 'home'
end
