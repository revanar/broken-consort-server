Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  jsonapi_resources :users
  jsonapi_resources :songs
  jsonapi_resources :composers
  jsonapi_resources :books
  jsonapi_resources :editors
  jsonapi_resources :collections
  jsonapi_resources :tags
  jsonapi_resources :languages
end
