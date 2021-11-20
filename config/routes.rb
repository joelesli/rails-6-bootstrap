Rails.application.routes.draw do
  
  # Landing page 
  root to: 'landing_pages#home'
  scope path: '/', controller: :landing_page do
    get 'about' => :about, as: 'about'
    get 'contact' => :contact, as: 'contact'
    get 'legal' => :legal, as: 'legal'
    get 'privacy' => :legal, as: 'privacy'
  end

  devise_for :users
  get '/users' => 'landing_pages#home'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
