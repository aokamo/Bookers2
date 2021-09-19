class UsersController < ApplicationController

  def new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if
      @book.save
      redirect_to book_path, notice:'You have created book successfully.'

    end
  end

  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end

  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to user_path(@user.id), notice:"You have updated user successfully."
      else
        render :edit
      end
  end

private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
