Projeto::Application.routes.draw do

	root  'static_pages#home'

	resources :personnes,   :controller => 'personnes',     :type => 'Personne'
	resources :patients,    :controller => 'personnes',     :type => 'Patient'
	resources :staffs,      :controller => 'personnes',     :type => 'Ptaff'
	resources :answers
	match 'add_survey',     to: 'answers#add_survey',    via: 'post'
	match '/personnes/new', to: 'personnes#new',          via: 'post',  :type => 'Patient'

	get 'static_pages/home'
	get 'introduction_question/create'

	match '/help',      to: 'static_pages#help',    via: 'get'
	match '/about',     to: 'static_pages#about',   via: 'get'
	match '/contact',   to: 'static_pages#contact', via: 'get'
	match '/signin',    to: 'sessions#new',         via: 'get'
	match '/signout',   to: 'sessions#destroy',     via: 'delete'

	# Finding personne
	match '/find',to: 'personnes#find',           via: 'get'

	#testing page
	match '/test',      to: 'static_pages#test',         via: 'get'
	match '/test2',      to: 'static_pages#test2',         via: 'get'

end
