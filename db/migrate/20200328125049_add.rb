class Add < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :deliveryaddres, null:false,foreign_key: true
  end
end
