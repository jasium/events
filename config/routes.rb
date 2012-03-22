Events::Application.routes.draw do
  resources :reviews

  resources :registrations
  resources :events
  root :to => 'events#index'

  get "upcoming-events" => 'events#index', as: "upcoming_events"
  get "search" => "events#search", as: "search"
end
