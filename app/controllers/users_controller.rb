class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    @book_new = Book.new
  end
 
  
  
  def show
    @user = User.find(params[:id])
    @book = @user.books
    @user_new = User.new
    @book_new = Book.new
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  
  private
  def book_params
    params.require(:book).permit(:title,:body,:image)
    
  end
  
  
  
  
  
end
