Events::Application.routes.draw do
  resources :reviews

  resources :events do
    resources :registrations
  end
  root :to => 'events#index'

  get "upcoming-events" => 'events#index', as: "upcoming_events"
  get "search" => "events#search", as: "search"
end
