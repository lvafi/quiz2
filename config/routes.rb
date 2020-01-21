Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get('/', { to: 'welcome#index', as: 'root'})
  get 'ideas/new', to: 'ideas#new'
  post 'ideas/', to: 'ideas#create'

  resources :ideas
end
