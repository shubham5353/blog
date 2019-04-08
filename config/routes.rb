Rails.application.routes.draw do
  get '/page', to: 'page#index', as: 'page'

  get '/about', to: 'page#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
