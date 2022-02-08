Rails.application.routes.draw do
  resources :pages do
    resources :content
  end
  
  resources :contents
  resources :categories
  resources :users do
    resources :bookmark
  end
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
