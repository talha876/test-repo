Rails.application.routes.draw do
  resources :urls
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "urls#new"

  get '/shortened_url' => 'urls#shortened_url'
  get '/:id', to: 'urls#decode_url'

end
