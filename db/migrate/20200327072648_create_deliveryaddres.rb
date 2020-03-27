class CreateDeliveryaddres < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveryaddres do |t|
      t.string :prefecture , null:false
      t.timestamps
    end
  end
end
