Rails.application.routes.draw do



  get 'snapmentor' => "snap_mentor#index"
  get 'bilderdaten' => "pages#images"
  get 'search_snaps'=> 'snaps#search'
  get 'impressum' => "pages#impressum"
  get 'agb' => "pages#agb"


  root 'snap_mentor#index'

  resources :blog_posts
  resources :snaps
  resources :categories

  devise_for :admins, path_names: {
    sign_up: ''
  }
  devise_for :users, :controllers => { :registrations => 'registrations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
