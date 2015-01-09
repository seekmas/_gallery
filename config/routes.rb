Rails.application.routes.draw do
  resources :results

  resources :scenes

  resources :fields

  resources :activities

  get '/:id/gallery' => 'app#show' , :as => 'gallery'
  get '/:id/form' => 'app#form' , :as => 'form'
  post '/form_handle' => 'app#form_handle' , :as => 'form_handle'


  root 'app#index'

end
