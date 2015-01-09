Rails.application.routes.draw do
  resources :scenes

  resources :fields

  resources :activities

  get '/:id/gallery' => 'app#show' , :as => 'gallery' 

  root 'app#index'

end
