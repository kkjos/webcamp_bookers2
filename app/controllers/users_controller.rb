class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books.page(params[:page]).reverse_order
  end
  
  def index
    @users = User.all
  end

    private
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
