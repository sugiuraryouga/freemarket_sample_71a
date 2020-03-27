class CreateDeliveryspends < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveryspends do |t|
      t.string :spend , null: false
      t.timestamps
    end
  end
end
