class AddUserIdtodeliveradress < ActiveRecord::Migration[5.2]
  def change
    add_reference :deliver_adresses, :user, null:false,foreign_key: true
  end
end
