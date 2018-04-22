Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :fake_apis
  # resources :apis
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match "*path", to: "fake_apis#fake_api", via: :all
end
