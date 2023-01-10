class OrderBooksController < ApplicationController
  def index
    @books = OrderBook.all
  end

  def show
    @book = OrderBook.find(params[:id])
  end

  def new
    @book = OrderBook.new
  end

  def create
    @book = OrderBook.new(book_params)
    if @book.save
      flash[:notice] = "You Orderd the Book Successfully!"
      redirect_to @book
    else
      flash[:alert] = "Error Check the Form"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @book = OrderBook.find(params[:id])
    @book.destroy(book_params)
    redirect_to order_books_path
  end

  private 

  def book_params
    params.require(:order_book).permit(:schoolname, :quantity , :isbn ,:booktitle )
  end


end
