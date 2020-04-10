class CommentsController < ApplicationController
  before_action :set_item
  def create
    @comment = @item.comments.new(comment_params)
    if @comment.save
      redirect_to item_path(params[:item_id])
    else
      @comments = @item.comments.includes(:user)
      flash[:alert] = 'メッセージを入力してください。'
      redirect_to item_path(params[:item_id])
    end
  end

  private

  def comment_params
    params.permit(:content).merge(user_id: current_user.id)
  end

  def set_item
    @item= Item.find(params[:item_id])
  end

end
