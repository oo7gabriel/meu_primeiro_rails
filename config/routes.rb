Rails.application.routes.draw do
  get 'shopping/index' => 'shopping#index' , as: 'shopping_index'
   get 'shopping/show/:id' => 'shopping#show' , as: 'shopping_show'
  get 'shopping/new' => 'shopping#new' , as: 'shopping_new'
  post 'shopping/create' => 'shopping#create' , as: 'shopping_create'
  get 'shopping/edit/:id' => 'shopping#edit' , as: 'shopping_edit'
  patch 'shopping/uptade/:id' => 'shopping#uptade' , as: 'shopping_uptade'
  delete 'shopping/destroy' => 'shopping#destroy' , as: 'shopping_destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
