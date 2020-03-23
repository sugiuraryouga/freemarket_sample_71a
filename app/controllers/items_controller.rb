class ItemsController < ApplicationController
  def index
    # トップページ
  end

  def new
    @items = Item.new
  end

  def show
  end
end
