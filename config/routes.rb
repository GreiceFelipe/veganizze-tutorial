Rails.application.routes.draw do
  root 'application#home'
  get '*', to: 'application#home'
  resources :recipes do
    collection do
      get :layout
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
