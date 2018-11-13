class UsersController < ApplicationController

  def index
    user = User.create
    render json: user
  end

  def destroy
    
  end

end
