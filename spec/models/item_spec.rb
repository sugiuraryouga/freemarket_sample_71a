# require 'rails_helper'
# describe Item do
#   describe '#create' do
#     # let(:image_path) { Rails.root.join('spec/factories/test.jpg') }
#     # let(:image) { Rack::Test::UploadedFile.new(image_path) }
#     it "is invalid without a name" do
#       item = Item.new("name"=>"", "text"=>"hoge", "category_id"=>"23", "brand_id"=>"4", "condition_id"=>"1", "deliverycharge_id"=>"1", "deliveryspend_id"=>"1", "deliveryaddres_id"=>"1", "price"=>"100")
#       item.valid?
#       expect(item.errors[:name]).to include("を入力してください")
#     end
#     it "is invalid without a text" do
#       item = Item.new("name"=>"kff", "text"=>"", "category_id"=>"23", "brand_id"=>"4", "condition_id"=>"1", "deliverycharge_id"=>"1", "deliveryspend_id"=>"1", "deliveryaddres_id"=>"1", "price"=>"100")
#       item.valid?
#       expect(item.errors[:text]).to include("を入力してください")
#     end
#     it "is invalid without a price" do
#       item = Item.new("name"=>"kff", "text"=>"dd", "category_id"=>"23", "brand_id"=>"4", "condition_id"=>"1", "deliverycharge_id"=>"1", "deliveryspend_id"=>"1", "deliveryaddres_id"=>"1", "price"=>"")
#       item.valid?
#       expect(item.errors[:price]).to include("を入力してください")
#     end

#     it "is invalid without a category_id" do
#       item = FactoryBot.build(:item, category_id: nil )
#       item.valid?
#       expect(item.errors[:category_id]).to include("を入力してください")
#     end
   

#     it "写真が空だと無効" do
#       item = FactoryBot.build(:item)
#       item.valid?
#       expect(item.errors[:item_images]).to include("画像を入力してください")
#     end

#     it "写真が5個以上だと無効" do
#       item = FactoryBot.build(:item)
#       item.item_images.build(image:Rack::Test::UploadedFile.new(File.join(Rails.root, 'app/assets/images/logo.png')))
#       item.item_images.build(image:Rack::Test::UploadedFile.new(File.join(Rails.root, 'app/assets/images/logo.png')))
#       item.item_images.build(image:Rack::Test::UploadedFile.new(File.join(Rails.root, 'app/assets/images/logo.png')))
#       item.item_images.build(image:Rack::Test::UploadedFile.new(File.join(Rails.root, 'app/assets/images/logo.png')))
#       item.item_images.build(image:Rack::Test::UploadedFile.new(File.join(Rails.root, 'app/assets/images/logo.png')))
#       # image=FactoryBot.build(:item_image,item_id:item.id)
      
#       item.valid?
#       expect(item.errors[:item_images]).to include("登録できる画像は４個以内です")
#     end

#     # it "写真が空だと無効" do
#     #   item = FactoryBot.build( :item_with_itemimages,item_image:{ image: image})
#     #   item.valid?
#     #   expect(item.errors[:item_images]).to include("を入力してください")
#     # end

#   end
# end