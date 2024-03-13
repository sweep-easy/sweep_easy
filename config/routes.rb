Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", :as => :rails_health_check

  authenticated :user do
    root to: "dashboard#show", as: :dashboard
  end

  get "about" => "pages#about", :as => :about
  get "contact" => "pages#contact", :as => :contact
  get "terms" => "pages#terms", :as => :terms
  get "privacy" => "pages#privacy", :as => :privacy

  root "pages#index"
end
