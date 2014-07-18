Rails.application.routes.draw do
  root "csf/pages#landing"

  resources :messages
end
