Rails.application.routes.draw do
  resources :nearest_stations
  resources :rent_houses

  root to: 'rent_house#index'
end
