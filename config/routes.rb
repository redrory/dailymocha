Dailymocha::Application.routes.draw do


  get "home/show"
  root :to => "home#show"
  match "cal" => "home#show"

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'


end
