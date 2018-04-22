Rails.application.routes.draw do
  resources :fake_apis
  # resources :apis
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match "*path", to: "fake_apis#fake_api", via: :all
end
