Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'bookers#top'
  get '/books' => 'bookers#index', as: 'index_book'
  post '/books' => 'bookers#create'
  get '/books/:id' => 'bookers#show', as: 'book'
  get '/books/:id/edit' => 'bookers#edit', as: 'edit_book'
  get '/books' => 'bookers#index', as: 'back'
  patch '/books/:id' => 'bookers#update', as: 'update_edit'
  delete 'books/:id' => 'bookers#destroy', as: 'destroy_book'
end
