MundaneHeroes::Application.routes.draw do
   resources :users
  root :to => redirect('/users')
   
end
