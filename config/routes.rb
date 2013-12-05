FocusGTD::Application.routes.draw do

  devise_for :users, controllers: {
    sessions:      'authentication/sessions',
    registrations: 'authentication/registrations'
  }

  devise_scope :user do
    get 'sign_in',  to: 'authentication/sessions#new'
    get 'sign_up',  to: 'authentication/registrations#new'
    get 'sign_out', to: 'authentication/sessions#destroy'
  end

end