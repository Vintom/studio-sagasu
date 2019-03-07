Rails.application.routes.draw do
  root 'top#index'
  resources :rooms
  resources :studios
  resources :studios do
    member do
      get 'studio_image'
    end
  end
  get 'apply',to:'studios#apply'
  get 'apply_confirm',to:'studios#apply_confirm'
  post 'apply_confirm',to:'studios#apply_confirm'
  get 'apply_complete',to:'studios#apply_complete'
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
  get '*unmatched_route', to: redirect('/'), format: false unless Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
