class AddSizeIdToItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :size, null:false,foreign_key: true
  end
end
