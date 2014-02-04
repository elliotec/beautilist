HowToSite::Application.routes.draw do
  devise_for :users
  resources :lists do
    resources :steps
  end

  root 'lists#index'
end
