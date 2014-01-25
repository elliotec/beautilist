Howto::Application.routes.draw do
  resources :lists do
    resources :steps
  end

  root 'lists#index'
end
