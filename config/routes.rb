Rails.application.routes.draw do


  get 'stores/index/' => 'stores#index' , as: 'stores_index'
  get 'stores/show/:idshopping' => 'stores#show' , as: 'stores_show'
  get 'stores/new/' => 'stores#new' , as: 'stores_new'
  post 'stores/create' => 'stores#create' , as: 'stores_create'
  get 'stores/edit/:idshopping' => 'stores#edit' , as: 'stores_edit'
  patch 'stores/uptade/:idshopping' => 'stores#uptade' , as: 'stores_uptade'
  delete 'stores/destroy/:idshopping' => 'stores#destroy' , as: 'stores_destroy'

  get 'shopping/index' => 'shopping#index' , as: 'shopping_index'
   get 'shopping/show/:id' => 'shopping#show' , as: 'shopping_show'
  get 'shopping/new' => 'shopping#new' , as: 'shopping_new'
  post 'shopping/create' => 'shopping#create' , as: 'shopping_create'
  get 'shopping/edit/:id' => 'shopping#edit' , as: 'shopping_edit'
  patch 'shopping/uptade/:id' => 'shopping#uptade' , as: 'shopping_uptade'
  delete 'shopping/destroy/:id' => 'shopping#destroy' , as: 'shopping_destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
