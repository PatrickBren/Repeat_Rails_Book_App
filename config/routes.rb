Rails.application.routes.draw do
  
  devise_for :users
  root :to => "books#index"

  get '/news', :controller=>'rss_feed', :action=>'rss_feed'
  


  resources :users
  resources :books do
  	resources :reviews, except: [:show, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
