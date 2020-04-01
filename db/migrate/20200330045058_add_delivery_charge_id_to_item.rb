class AddDeliveryChargeIdToItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :deliverycharge, null:false,foreign_key: true
  end
end
