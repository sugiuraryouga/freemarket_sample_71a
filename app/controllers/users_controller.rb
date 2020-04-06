class UsersController < ApplicationController
  def index
  end
  # def new
  #   @user = user.new
  #   @profile = profile.new
  #   @deliver_adress = deliver_adress.new
  # end

  # def create
  #   @user = user.new(user_params)
  #   @user.save!
  #   @profile = profile.new(profile_params)
  #   @profile.save!
  #   @deliver_adress = deliver_adress.new(deliver_adress_params)
  #   @deliver_adress.save!
  #   redirect_to user_path(@user)
  # rescue
  #   render action: 'new'
  # end

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
