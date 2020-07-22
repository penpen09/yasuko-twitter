Rails.application.routes.draw do
  root 'top#index'
  resources :mytweets do
    post :confirm, on: :collection
    patch :confirm, on: :member
    # get :top, on: :collection
  end
end
