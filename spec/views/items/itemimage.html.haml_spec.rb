require 'rails_helper'

describe "Item_with_itemimages" do
  describe '#create' do
    it "nameがない場合は登録できないこと" do
     item = build(:item_with_itemimages, name: nil)
     item.valid?
     expect(item.errors[:name]).to include("を入力してください")
    end
    it "textがない場合は登録できないこと" do
      item = build(:item_with_itemimages, text: nil)
      item.valid?
      expect(item.errors[:text]).to include("を入力してください")
     end
     it "category_idがない場合は登録できないこと" do
      item = build(:item_with_itemimages, category_id: nil)
      item.valid?
      expect(item.errors[:category_id]).to include("を入力してください")
     end
     it "condition_idがない場合は登録できないこと" do
      item = build(:item_with_itemimages, condition_id: nil)
      item.valid?
      expect(item.errors[:condition_id]).to include("を入力してください")
     end
     it "deliverycharge_idがない場合は登録できないこと" do
      item = build(:item_with_itemimages, deliverycharge_id: nil)
      item.valid?
      expect(item.errors[:deliverycharge_id]).to include("を入力してください")
     end
     it "deliveryspend_idがない場合は登録できないこと" do
      item = build(:item_with_itemimages, deliveryspend_id: nil)
      item.valid?
      expect(item.errors[:deliveryspend_id]).to include("を入力してください")
     end
     it "deliveryaddres_idがない場合は登録できないこと" do
      item = build(:item_with_itemimages, deliveryaddres_id: nil)
      item.valid?
      expect(item.errors[:deliveryaddres_id]).to include("を入力してください")
     end
     it "priceがない場合は登録できないこと" do
      item = build(:item_with_itemimages, price: 100)
      item.valid?
      expect(item.errors[:price]).to include("は300より大きい値にしてください")
     end
     it "user_idがない場合は登録できないこと" do
      item = build(:item_with_itemimages, user_id: nil)
      item.valid?
      expect(item.errors[:user_id]).to include("を入力してください")
     end
  end
end