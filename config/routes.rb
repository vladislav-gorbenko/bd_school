BdSchool::Application.routes.draw do

  root :to => 'people#index'
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  resources :products, :users, :people, :groups, :events, :invites
end
