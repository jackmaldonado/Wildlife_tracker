Rails.application.routes.draw do
  resources :sightings
  resources :animals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/animal_form' => 'animals#new'
  # post '/submit_animal' => 'animals#create'
end

