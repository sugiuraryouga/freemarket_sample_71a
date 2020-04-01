class RemoveDeliverySprndIdFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :deliverysprnd_id
  end
end
