Rails.application.routes.draw do
  resources :books
  root 'books#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # config/routes.rb

resources :books do
  member do
    get 'confirm_destroy'
  end
end

end
