Rails.application.routes.draw do


  devise_for :admins, path_names: { sign_up: '' }
  devise_for :users, :controllers => { :registrations => 'registrations', 
                                       :sessions => 'sessions' }


  root 'snap_mentor#index'

  get 'snapmentor' => "snap_mentor#index"
  get 'bilderdaten' => "pages#images"
  get 'search_snaps'=> 'snaps#search'
  get 'impressum' => "pages#impressum"
  get 'agb' => "pages#agb"
  get 'erfolg' => "pages#erfolg"


  resources :blog_posts
  resources :snaps
  resources :categories


  get 'danke' => "charges#create"
  get 'danke' => "twocharges#create"
  get 'business/bezahlen' => "charges#new"
  post 'business/bezahlen' => "charges#create"


  get 'eltern/bezahlen' => "twocharges#new"
  post 'eltern/bezahlen' => "twocharges#index"



  
 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
