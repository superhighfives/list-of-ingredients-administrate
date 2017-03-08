Rails.application.routes.draw do
  namespace :admin, as: '' do
    get '/drinks/new', to: 'drinks#new', as: 'new_admin_drink'
    get '/drinks/:id/edit', to: 'drinks#edit', as: 'edit_admin_drink'
    get '/ingredients/new', to: 'ingredients#new', as: 'new_admin_ingredient'
    get '/ingredients/:id/edit', to: 'ingredients#edit', as: 'edit_admin_ingredient'
  end
  namespace :admin do
    resources :drinks
    resources :ingredients
    root to: "drinks#index"
  end
  scope '/api' do
    resources :drinks
  end
end
