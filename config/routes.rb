Rails.application.routes.draw do
  devise_for :admins
  
  authenticate :admin do
    resources :products
    resources :categories
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
end
