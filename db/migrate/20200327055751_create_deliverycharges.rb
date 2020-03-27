class CreateDeliverycharges < ActiveRecord::Migration[5.2]
  def change
    create_table :deliverycharges do |t|
      t.string :price , null: false
      t.timestamps
    end
  end
end
