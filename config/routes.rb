Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :documents

  authenticated :user do
    root "documents#index", as "authenticated_root"
  end

end
