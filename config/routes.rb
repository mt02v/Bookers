Rails.application.routes.draw do
  get 'lists/new'
  get 'books_controlle/index'
  get 'books_controlle/show'
  get 'books_controlle/edit'
  get '/top' => 'homes#top'
  post 'lists' => 'lists#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'

end
