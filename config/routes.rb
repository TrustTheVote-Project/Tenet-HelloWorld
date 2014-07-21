Rails.application.routes.draw do

  root "csf/pages#landing"

  resources :messages

  namespace :admin_admin do
    resource :settings, only: [ :edit, :update ]
  end

end
