BdSchool::Application.routes.draw do
  root :to => 'users#index'
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  resources :products, :users
end
