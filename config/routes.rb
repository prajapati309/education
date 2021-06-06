Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :new, :create, :edit, :update]
  root to: 'articles#index'
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
end
