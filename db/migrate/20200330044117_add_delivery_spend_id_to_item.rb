class AddDeliverySpendIdToItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :deliveryspend, null:false,foreign_key: true
  end
end
