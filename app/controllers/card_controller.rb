class CardController < ApplicationController
  require "payjp"
  before_action :set_items,only:[:index,:pay,:done]

  def index
    @item=Item.find(params[:item_id])
    @images = @item.item_images
    @image = @images.first
    card = Card.where(user_id: current_user.id).first
    #Cardテーブルは前回記事で作成、テーブルからpayjpの顧客IDを検索
    if card.blank?
      #登録された情報がない場合にカード登録画面に移動
      redirect_to controller: "card", action: "new"
    else
      Payjp.api_key = ENV["PAYJP_ACCESS_KEY"]
      #保管した顧客IDでpayjpから情報取得
      customer = Payjp::Customer.retrieve(card.customer_id)
      #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def new
    card = Card.where(user_id: current_user.id)
    # redirect_to action: "show" if card.exists?
  end

  def create #payjpとCardのデータベース作成を実施します。
   
    Payjp.api_key = ENV["PAYJP_ACCESS_KEY"]
    # if params[:payjp_token].blank?
    #   binding.pry
    #   redirect_to action: "new"
    # else
      customer = Payjp::Customer.create(
        card: params[:payjp_token],
        metadata: {user_id: current_user.id}
      ) 
      #念の為metadataにuser_idを入れましたがなくてもOK
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        flash[:notice] = 'クレジットカード情報を登録しました。'
        redirect_to action: "show"
      else
        flash[:error] = '情報は正しく入力してください。'
        redirect_to action: "pay"
      end
    end

  def delete #PayjpとCardデータベースを削除します
    card = Card.where(user_id: current_user.id).first
    if card.blank?
    else
      Payjp.api_key = ENV["PAYJP_ACCESS_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
    end
      redirect_to action: "new"
  end

  def show #Cardのデータpayjpに送り情報を取り出します
    # @item=Item.find(params[:item_id])
    card = Card.where(user_id: current_user.id).first
    if card.blank?
      redirect_to action: "new" 
    else
      Payjp.api_key = ENV["PAYJP_ACCESS_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      # binding.pry
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def pay
    @item=Item.find(params[:item_id])
    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = ENV['PAYJP_ACCESS_KEY']
    Payjp::Charge.create(
    :amount => @item.price, #支払金額を入力（itemテーブル等に紐づけても良い）
    :customer => card.customer_id, #顧客ID
    :currency => 'jpy', #日本円
   )
   Order.create(item_id: params[:item_id],user_id: current_user.id)
   flash[:notice] = '購入が完了しました。'
   redirect_to item_path(@item) #完了画面に移動
  end

  def done
    
  end


  private

  def set_items
    @item = Item.find(params[:item_id])
  end
end
