Rails.application.routes.draw do
  devise_for :users, controllers: {
      passwords: 'passwords',
      registrations: 'registrations',
      sessions: 'sessions'
      
  }
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  resource :two_factor_settings, except: [:index, :show]
  root 'welcome#index'
end
