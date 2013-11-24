Projeto::Application.routes.draw do

	root  'static_pages#home'

	resources :personnes,   :controller => 'personnes',     :type => 'personne'
	resources :patients,    :controller => 'personnes',     :type => 'patient'
	resources :staffs,      :controller => 'personnes',     :type => 'staff'
	resources :answers
	match 'add_survey',     to: 'answers#add_survey',    via: 'post'

	get 'static_pages/home'
	get 'introduction_question/create'

	match '/help',      to: 'static_pages#help',    via: 'get'
	match '/about',     to: 'static_pages#about',   via: 'get'
	match '/contact',   to: 'static_pages#contact', via: 'get'
	match '/signin',    to: 'sessions#new',         via: 'get'
	match '/signout',   to: 'sessions#destroy',     via: 'delete'

	#testing page
	match '/test',      to: 'static_pages#test',         via: 'get'

end
