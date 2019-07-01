Rails.application.routes.draw do

  get '/merchants', to: 'merchants#index'
  get '/merchants/new', to: 'merchants#new'
  post '/merchants', to: 'merchants#create'
  get '/merchants/:id', to: "merchants#show"
  get '/merchants/:id/edit', to: 'merchants#edit'
  patch '/merchants/:id/edit', to: 'merchants#update'
  delete '/merchants/:id', to: 'merchants#destroy'

  get '/items', to: 'items#index'
  get '/merchants/:merchant_id/items', to: 'items#merchant_index'
  get '/items/:id', to: 'items#show'
  post '/merchants/merchant_id/items', to: 'items#create'
  get '/items/:id', to: 'items#edit'
  patch '/items/:id', to: 'items#update'

end
