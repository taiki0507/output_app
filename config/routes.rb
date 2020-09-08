Rails.application.routes.draw do
  root 'staticpages#home'
  
  get 'staticpages/index' => 'staticpages#index'
  get 'staticpages/show' => 'staticpages#show'
  get 'staticpages/news' => 'staticpages#news'
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
