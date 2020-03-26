class AddSizeIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :size, null:false,foreign_key: true
  end
end
