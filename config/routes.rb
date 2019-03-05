# frozen_string_literal: true

Rails.application.routes.draw do
  resources :examples, except: %i[new edit]
  # RESTful routes

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # Receipes resources
  resources :receipes, except: %i[new edit]

  # Doctors resources
  resources :doctors, except: %i[new edit]

  # Authors resources
  resources :authors, except: %i[new edit]

  # Books resources routes
  resources :books, except: %i[new edit]
  # get '/books' => 'books#index'
  # get '/books/:id' => 'books#show'
  # post '/books' => 'books#create'
  # patch '/books/:id' => 'books#update'

  # Patients resource routes
  resources :patients, except: %i[new edit]
  # get '/patients' => 'patients#index'
  # get '/patients/:id' => 'patients#show'
  # post '/patients' => 'patients#create'
  # patch '/patients/:id' => 'patients#update'
  # delete 'patients/:id' => 'patients#destroy'

  # Ingredients resource routes
  get '/ingredients' => 'ingredients#index'
  get '/ingredients/:id' => 'ingredients#show'
  post '/ingredients' => 'ingredients#create'
  patch '/ingredients/:id' => 'ingredients#update'
end
