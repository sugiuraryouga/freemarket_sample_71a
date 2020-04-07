class AddUserIdtoprofiles < ActiveRecord::Migration[5.2]
  def change
    add_reference :Profiles, :user, null:false,foreign_key: true
  end
end
