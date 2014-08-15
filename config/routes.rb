BdSchool::Application.routes.draw do

  resources :people do
    collection do
      post 'become_member'
    end
  end

  resources :static_pages

  root :to => 'static_pages#index'
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  resources :products, :users, :people, :groups, :events, :invites

end
