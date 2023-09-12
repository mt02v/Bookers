class BooksController < ApplicationController
 
  
  def index
   @book = Book.new 
   @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to '/top'
  end
  
  def show
    @book = Book.find(book_params)
  end
  
  def edit
    @book = Book.find(book_params)
  end

 private
 def book_params
  params.require(:book).permit(:title, :body)
 end
end