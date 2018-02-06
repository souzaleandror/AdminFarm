Rails.application.routes.draw do
  resources :contacts
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  root 'welcome#index'
  
  namespace :admin do
    #get '/' => 'welcome#index'
    resources :animal_sales
    resources :sale_types
    resources :animal_deaths
    resources :death_types
    resources :application_medicines
    resources :vaccinations
    resources :weighings
    resources :animals
    resources :animal_states
    resources :animal_stages
    resources :breed_animals
    resources :vaccines
    resources :medicines
    resources :animal_categories
    resources :farm_lots
    resources :farms
    resources :destinies
    resources :origins
    resources :genders
  end
end
