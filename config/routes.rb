Rails.application.routes.draw do


  root to: 'homes#top'
  get 'homes' => 'homes#about', as:'homes_about'
  devise_for :users

  resources :books, only:[:index, :show, :new, :create, :destroy]
  resources :users, only:[:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
