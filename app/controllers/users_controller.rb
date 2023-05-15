class UsersController < ApplicationController
  def index; end

  # GET /users/:id
  def show
    @user = User.find(params[:id])
    # debugger

    # => /app/views/users/show.html.erb
  end

  # GET /users/new or /signup
  def new
    @user = User.new
    # => /app/views/users/new.html.erb
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Success Process
    else
      render 'new' #, status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
