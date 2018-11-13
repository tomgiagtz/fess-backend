class UsersController < ApplicationController

  def index
    user = User.create
    render json: user
  end

  def show
  	user = User.find(params[:id])
  	render json: user
  end

  def destroy
    
  end

end
