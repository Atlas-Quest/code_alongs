Rails.application.routes.draw do
  resources :dishes

  # get '/dishes', 'dishes#index' #what's generated behind the scenes
  # post '/dishes'
  # get '/dishes/new'
  # get '/dishes/:id'
  # get '/dishes/:id/edit'
  # delete '/dishes/:id'

  get '/about', to: 'pages#about'

  get '/contact-us', to: 'reviews#new'
  post '/contact-us', to: 'reviews#create'

  # resources :reviews, only: [:new, :create]

  end
