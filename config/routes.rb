Rails.application.routes.draw do
  get 'users/new'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/sign'
  get 'static_pages/signup'
  resources :users
  root "static_pages#home"# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
