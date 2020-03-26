class ItemsController < ApplicationController
  before_action :set_items,only:[:show]

  def index
    # トップページ
  end

  def new

    @items = Item.new
  end

  def show
    @images = @item.item_images
    @image = @images.first
    # @comment = Comment.new
    # @comments = @product.comments.includes(:user)
  end

  private

  def set_items
    @item = Item.find(params[:id])
  end

end
