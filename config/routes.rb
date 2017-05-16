Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items do
    get :upvote,    on: :member
    get :expensive, on: :collection
  end
  #get ':controller(/:action(/:id))(.:format)'
end
