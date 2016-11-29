Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :photos do
    resources :comments
  end

  post 'likes' => 'likes#create'

  root 'photos#index'
end
