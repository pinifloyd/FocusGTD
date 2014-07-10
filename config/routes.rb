FocusGTD::Application.routes.draw do
  
  root 'content#home'

  devise_for :users, skip: [:sessions, :registrations]
  
  devise_scope :user do
    get  'sign_in',  to: 'authentication/sessions#new',         as: :new_user_session
    post 'sign_in',  to: 'authentication/sessions#create',      as: :user_session
    get  'sign_out', to: 'authentication/sessions#destroy',     as: :destroy_user_session

    get  'sign_up',  to: 'authentication/registrations#new',    as: :new_user_registration
    post 'sign_up',  to: 'authentication/registrations#create', as: :user_registration
  end

  resources :projects

end