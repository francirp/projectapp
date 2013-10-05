Projectapp::Application.routes.draw do

  resources :project_participants
  resources :team_members
  resources :projects
  resources :teams
  get 'user/:id' => 'users#show', as: 'user'
  devise_for :users
  root :to => "pages#home"

end
