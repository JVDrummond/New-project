Rails.application.routes.draw do

  get 'welcome/index'
  resources :categories, :items, :requests, :menus, :menu_requests


  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
