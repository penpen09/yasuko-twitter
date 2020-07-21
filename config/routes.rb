Rails.application.routes.draw do
  get '/mytweets/top',to:'mytweets#top'
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
