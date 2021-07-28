Rails.application.routes.draw do
  resources :watercolor_blogs
  root 'watercolor_blogs#index'
  get '/watercolor_blogs/show'
  post '/watercolor_blogs/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
