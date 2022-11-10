# frozen_string_literal: true

Rails.application.routes.draw do
  resources :canchas do
    resources :reviews, only: %i[new create index show edit]
  end

  resources :solicituds
  # resources :users
  resources :reviews

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  get '', to: 'home#inicio_fachero'

  # get 'users/new'
  # post 'users', to: 'users#create'

  # get 'users/edit'
  # patch 'users/update', to: 'users#update', as: 'users_update'

  # get 'users/index'
  # get 'users/show'

  # delete 'users/delete', to: 'users#delete', as: 'users_delete'

  get 'canchas/new'
  post 'canchas', to: 'canchas#create'

  get 'canchas/edit'
  patch 'canchas/update', to: 'canchas#update', as: 'canchas_update'

  get 'canchas/index'
  get 'canchas/show'

  delete 'canchas/delete', to: 'canchas#delete', as: 'canchas_delete'

  get 'reviews/new'
  post 'reviews', to: 'reviews#create'

  get 'reviews/edit'
  patch 'reviews/update', to: 'reviews#update', as: 'reviews_update'

  get 'reviews/index'
  get 'reviews/show'

  delete 'reviews/delete', to: 'reviews#delete', as: 'reviews_delete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
