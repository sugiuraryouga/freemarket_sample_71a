class OrdersController < ApplicationController
  def show
    @item=Item.find(params[:id])
  end
  # def create
  #   @item = Item.new(item_params)
  #   return if @item.valid?
  #   render :new
  # end
  

end
