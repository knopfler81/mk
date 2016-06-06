Rails.application.routes.draw do
  #
  # match '/messages',     to: 'messages#new',             via: 'get'
  # resources :messages, only: [:new, :create]

  resources "contacts", only: [:new, :create]

   root "home#index"
   get  "concerts/index"         => "concerts#index"
   get  "concerts/tracker"       => "concerts#tracker"
   get  "concerts/tracker/sion"  => "concerts#tracker"

end
