Rails.application.routes.draw do
  default_url_options host: 'https://www.example.com'

  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
