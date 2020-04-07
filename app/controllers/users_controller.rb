class UsersController < ApplicationController
  def index
  end

  def show
    @items=Item.all
    @user=User.find_by(id: current_user.id)
    @exhibitions = @user.items
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  def profile_params
    params.require(:profile).permit(:first_name, :family_name, :first_name_kana, :family_name_kana, :birth_year, :birth_month, :birth_day)
  end

  def deliver_adress_params
    params.require(:deliver_adress).permit(:postcord, :prefecture, :city, :adress1, :adress2, :telephone)
  end

end
