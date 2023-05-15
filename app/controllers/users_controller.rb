class UsersController < ApplicationController
  def index; end

  # GET /users/:id
  def show
    @user = User.find(params[:id])
    # debugger

    # => /app/views/users/show.html.erb
  end

  # GET /users/new
  def new
  
    # => /app/views/users/new.html.erb
  end

end
