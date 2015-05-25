Onlineappointments::Application.routes.draw do
  resources :sessions
  	delete 'sessions', to: 'sessions#destroy'
  resources :doctors
  	root :to => redirect('/doctors')	
end
