class UsersController < ApplicationController
  def index
  end
  def new
  end

  def show
    @items=Item.all
    @user=User.find_by(id: current_user.id)
    @exhibitions = @user.items
  end

 
end
