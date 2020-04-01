class ChangeColumnToAllowNull < ActiveRecord::Migration[5.2]
  def change
    remove_reference :items, :brand
    add_reference :items, :brand, null: true,foreign_key: true
  end
end
