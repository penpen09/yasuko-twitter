Rails.application.routes.draw do
  resources :mytweets do
    collection do
      post :confirm
      patch :confirm
    end
    member do
      patch :confirm
    end
  end
end
