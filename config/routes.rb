JetpackDemo::Application.routes.draw do
  root :to => 'high_voltage/pages#show', id: 'home'
  resources :samples # Used for the form demo
  resources :demos, :only => :show
end
