Dailymocha::Application.routes.draw do


  get "home/show"

  root :to => "home#show"

  match "cal" => "home#show"
end
