Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :docs
  authenticated :user do
    root "docs#index", as: "authenticagted_root"
  end

  root 'welcome#index'
end
