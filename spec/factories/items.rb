FactoryBot.define do

  factory :item do
    name                 {"abe"}
    text                 {"こんにちわ"}
    category_id          {"23"}
    condition_id         {"1"}
    deliverycharge_id    {"1"}
    deliveryspend_id     {"1"}
    deliveryaddres_id    {"1"}
    price                {"1000"}
    user_id              {"1"}
    # images {[
    #   FactoryBot.build(:image, product: nil)  #itemと同時にimage作成
    # ]}
  end

  factory :item_with_itemimages, class: Item do
    name                 {"abe"}
    text                 {"こんにちわ"}
    category_id          {"23"}
    condition_id         {"1"}
    deliverycharge_id    {"1"}
    deliveryspend_id     {"1"}
    deliveryaddres_id    {"1"}
    price                {"1000"}
    user_id              {"1"}

    after( :create ) do |item|
      create :item_image, item: item
    end
  end  

end
