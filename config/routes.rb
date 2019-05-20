Rails.application.routes.draw do
  root 'top#index'
  resources :rooms
  resources :studios
  resources :studios do
    member do
      get 'studio_image'
    end
  end
  resources :accounts
  namespace :admin do
    root 'top#index'
    resources :studios do
      get :upload
      resources :studio_images do
        collection do
          post :upload
        end
      end
    end
    resources :rooms
    resources :areas
  end
  get '*path', controller: 'application', action: 'render_404'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
