class RemoveUserIdIdFromCards < ActiveRecord::Migration[5.2]
  def change
    remove_column :cards, :user_id
  end
end
