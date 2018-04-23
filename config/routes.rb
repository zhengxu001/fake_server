Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :fake_apis
  match "*path", to: "fake_apis#fake_api", via: :all
end
