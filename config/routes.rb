Rails.application.routes.draw do



  get 'snapmentor' => "snap_mentor#index"
  get 'images_data' => "pages#images"
  get 'search_snaps', to: 'snaps#search'

  root 'snaps#index'

  resources :blog_posts
  resources :snaps
  resources :categories

  devise_for :admins, path_names: {
    sign_up: ''
  }
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
