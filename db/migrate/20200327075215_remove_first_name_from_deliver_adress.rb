class RemoveFirstNameFromDeliverAdress < ActiveRecord::Migration[5.2]
  def change
    remove_column :Deliver_Adresses, :first_name
    remove_column :Deliver_Adresses, :family_name
    remove_column :Deliver_Adresses, :first_name_kana
    remove_column :Deliver_Adresses, :family_name_kana
    remove_column :Deliver_Adresses, :email
    remove_column :Deliver_Adresses, :encrypted_password
    remove_column :Deliver_Adresses, :reset_password_token
    remove_column :Deliver_Adresses, :reset_password_sent_at
    remove_column :Deliver_Adresses, :remember_created_at
    remove_column :Deliver_Adresses, :created_at
    remove_column :Deliver_Adresses, :updated_at
  end
end
