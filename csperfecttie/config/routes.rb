Rails.application.routes.draw do
  resources :prpages
  resources :homepages
  resources :test2s
  resources :tests
  get 'register/index'
  get 'homepages' => 'homepages#index'
  get 'login/index'
  get 'posts' => 'posts#index'
  get 'prpages' => 'prpages#index'
  get 'contact' => 'contact#index'

  get 'register' => 'register#index'
  get 'login' => 'login#index'

  resources :items
  get 'about' => 'about#index'

  get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
