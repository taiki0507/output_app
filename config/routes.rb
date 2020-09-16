Rails.application.routes.draw do
  get 'micropost/new'

  root 'staticpages#home'
  post '/' => 'staticpages#home'
  
  get 'staticpages/index' => 'staticpages#index'
  get 'staticpages/show' => 'staticpages#show'
  get 'staticpages/news' => 'staticpages#news'
  get 'staticpages/new' => 'staticpages#new'
  
  
  
  get 'micropost/new' => 'micropost#new'
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
