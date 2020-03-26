class ItemsController < ApplicationController
  def index

    
  end

  def new
    @items = Item.new
    #セレクトボックスの初期値設定
    @category_parent_array = ["---"]
    #データベースから、親カテゴリーのみ抽出し、配列化
    Category.where(ancestry: nil).each do |parent|
      @category_parent_array << parent.name
    end
  end

  # 以下全て、formatはjsonのみ
   # 親カテゴリーが選択された後に動くアクション
   def get_category_children
    #選択された親カテゴリーに紐付く子カテゴリーの配列を取得
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
 end

  # 子カテゴリーが選択された後に動くアクション
 def get_category_grandchildren
    #選択された子カテゴリーに紐付く孫カテゴリーの配列を取得
    @category_grandchildren = Category.find("#{params[:child_id]}").children
 end

 def create
  Item.create(message_params)
  redirect_to root_path
end

  def show
    @item=Item.find(params[:id])
    @category=@item.category
    @children=@category.parent
    @parentcategory=@category.parent


  end

  private

  def item_params
    params.require(:item).permit(:name, :text)
  end


end
