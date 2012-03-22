Events::Application.routes.draw do
  resources :events do
    match :search, :on => :collection
    resources :reviews #, only: [:index, :new, :create]
  end
  root :to => "events#index"

  #sget "upcoming-events" => 'events#index', as: "upcoming_events"
  get "search" => "events#search", as: "search"
end
