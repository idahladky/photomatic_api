Rails.application.routes.draw do
  root to: "photos#index"
  get "photos/new", :to => "photos#new"
  resources :photos, only: [:index, :show, :create, :update, :destroy]
  resources :photo_posts

   
end
