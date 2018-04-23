Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :fake_apis
  root to: "fake_apis#index"
  match "*path", to: "fake_apis#fake_api", via: :all
end
