JetpackDemo::Application.routes.draw do
  root :to => 'high_voltage/pages#show', id: 'home'
  resources :demos, :only => :show
end
