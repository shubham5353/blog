Rails.application.routes.draw do
  get '/article',  to:'article#new'
   get '/article/:id',  to:'article#index', as: 'article_index'
  get '/article/:id',  to:'article#show', as: 'article_show'
  get '/article/:id',  to:'article#edit', as: 'article_edit'

  get '/page', to: 'page#index', as: 'page'

  get '/about', to: 'page#about'

  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
