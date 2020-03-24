class RemoveItemIdFromItemImage < ActiveRecord::Migration[5.2]
  def change
    remove_reference :item_images, :item_id
  end
end
