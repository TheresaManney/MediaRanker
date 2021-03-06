Rails.application.routes.draw do
  root "works#index"

  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/works/:id', to: 'works#show', as: 'work'
  get '/works/:id/edit', to: 'works#edit', as: 'edit_work'
  put 'works/:id', to: 'works#update'
  get '/works/index'
  delete '/works/:id', to: 'works#destroy', as: 'delete_work'

  get '/movies', to: 'movies#index'
  get '/movies/new', to: 'movies#new', as: 'new_movie'
  post '/movies', to: 'movies#create'

  get '/books', to: 'books#index'
  get '/books/new', to: 'books#new', as: 'new_book'
  post '/books', to: 'books#create'


  get '/albums', to: 'albums#index'
  get '/albums/new', to: 'albums#new', as: 'new_album'
  post '/albums', to: 'albums#create'

  post '/works/:id/upvote', to: 'works#upvote', as: 'upvote'
  get '/login', to: 'sessions#login_form'
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'

end
