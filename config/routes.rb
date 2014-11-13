Rails.application.routes.draw do

  root "tenet/pages#landing"

  resources :messages

  namespace :group_admin do
    resource :settings, only: [ :edit, :update ]
  end

  namespace :admin_admin do
    resource :settings, only: [ :edit, :update ]
  end

end
