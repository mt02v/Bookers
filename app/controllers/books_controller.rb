class BooksController < ApplicationController
 
  
  def index
   @book = Book.new 
   @books = Book.all

  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to '/top'
    flash[:notice] = "Book was successfully updated."
    redirect_to book_path(@book.id)
    flash[:notice] = "error"
    
    @book = Book.new(book.id)
    if @book.save
      redirect_to book_path(@book.id)
    else
    ender :new
    end
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book =  Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  def destroy
    book = book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

 private
 def book_params
  params.require(:book).permit(:title, :body)
 end
 
end