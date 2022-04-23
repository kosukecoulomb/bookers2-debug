class FavoritesController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    favorite = Favorite.new(book_id: book.id)
    favorite.user_id = current_user.id
    favorite.save
    redirect_to book_path(book)
  end
  
  def destroy
    book = Book.find(params[:book_id])
    favorite = Favorite.new(book_id: book.id)
    favorite.user_id = current_user.id
    favorite.destroy
    redirect_to book_path(book)
  end
end
