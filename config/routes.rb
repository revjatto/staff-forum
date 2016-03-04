Rails.application.routes.draw do
  resources :articles
  
 

get 'articles/new'

   root to: 'articles#index'

  

end
