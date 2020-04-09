# require 'rails_helper'

# describe Item do
#   describe '#create' do
#     it "nameがない場合は登録できないこと" do
#      item = build(:item, name: nil)
#      item.valid?
#      expect(item.errors[:name]).to include("を入力してください")
#     end
#     it "textがない場合は登録できないこと" do
#       item = build(:item, text: nil)
#       item.valid?
#       expect(item.errors[:text]).to include("を入力してください")
#      end
#      it "category_idがない場合は登録できないこと" do
#       item = build(:item, category_id: nil)
#       item.valid?
#       expect(item.errors[:category_id]).to include("を入力してください")
#      end
#      it "condition_idがない場合は登録できないこと" do
#       item = build(:item, condition_id: nil)
#       item.valid?
#       expect(item.errors[:condition_id]).to include("を入力してください")
#      end
#      it "deliverycharge_id" do
#       item = build(:item, deliverycharge_id: nil)
#       item.valid?
#       expect(item.errors[:deliverycharge_id]).to include("を入力してください")
#      end
#      it "deliveryspend_id" do
#       item = build(:item, deliveryspend_id: nil)
#       item.valid?
#       expect(item.errors[:deliveryspend_id]).to include("を入力してください")
#      end
#      it "price" do
#       item = build(:item, price: "100")
#       item.valid?
#       expect(item.errors[:price]).to include("は300より大きい値にしてください")
#      end
#      it "user_id" do
#       item = build(:item, user_id: nil)
#       item.valid?
#       expect(item.errors[:user_id]).to include("を入力してください")
#      end
#   end
# end