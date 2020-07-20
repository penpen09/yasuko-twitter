Rails.application.routes.draw do
  get '/mytweets',to: 'mytweets#index'
end
