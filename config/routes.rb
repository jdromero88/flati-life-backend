Rails.application.routes.draw do
  resources :user_projects
  resources :project_teches
  resources :users
  resources :projects
  resources :tech_specifications
  resources :cohorts
  post '/users/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
