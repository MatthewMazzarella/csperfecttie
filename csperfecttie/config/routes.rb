Rails.application.routes.draw do
  resources :ppages
  resources :posts
  resources :profiles
  resources :homeones
  get 'homeones' => 'homeones#index'
  get 'profiles' => 'profiles#index'
  get 'register/index'
  get 'posts' => 'posts#index'
  get 'login/index'
  get 'ppages' => 'ppages#index'
  get 'contact' => 'contact#index'

  get 'register' => 'register#index'
  get 'login' => 'login#index'

  resources :items
  get 'about' => 'about#index'

  get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
