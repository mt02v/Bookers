Rails.application.routes.draw do
  get 'books_controlle/new'
  get 'books_controlle/index'
  get 'books_controlle/show'
  get 'books_controlle/edit'
  get 'books/home'
  get 'books/top'
  get 'homes/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
