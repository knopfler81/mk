Rails.application.routes.draw do
  #


  match '/messages',     to: 'contactss#new',             via: 'get'
  resources "contacts", only: [:new, :create]

   root "home#index"
   get  "concerts/index"         => "concerts#index"
   get  "concerts/tracker"       => "concerts#tracker"
   get  "concerts/tracker/sion"  => "concerts#tracker"

end
