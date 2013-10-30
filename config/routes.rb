Projeto::Application.routes.draw do
  resources :personnes, :controller => 'personnes', :type => 'personne'
  resources :patients, :controller => 'personnes', :type => 'patient'
  resources :staffs, :controller => 'personnes', :type => 'staff'

  get 'static_pages/home'
  root  'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

end
