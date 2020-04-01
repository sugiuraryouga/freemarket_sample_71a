class OrdersController < ApplicationController

  def show
    @item=Item.find(params[:id])
    @images = @item.item_images
    @image = @images.first
  end
end
