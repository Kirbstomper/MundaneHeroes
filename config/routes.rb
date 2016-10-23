MundaneHeroes::Application.routes.draw do
   resources :users
  root :to => redirect('/users')
  get '/logout', to: 'users#logout', via: [:destroy], as: :logout
  post '/login', to: 'users#login', via: [:destroy], as: :login
  
   resources :games
   resources :characters
   
end
