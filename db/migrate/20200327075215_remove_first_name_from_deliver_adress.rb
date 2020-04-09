class RemoveFirstNameFromDeliverAdress < ActiveRecord::Migration[5.2]
  def change
    remove_column :deliver_adresses, :first_name
    remove_column :deliver_adresses, :family_name
    remove_column :deliver_adresses, :first_name_kana
    remove_column :deliver_adresses, :family_name_kana
    remove_column :deliver_adresses, :email
    remove_column :deliver_adresses, :encrypted_password
    remove_column :deliver_adresses, :reset_password_token
    remove_column :deliver_adresses, :reset_password_sent_at
    remove_column :deliver_adresses, :remember_created_at
    remove_column :deliver_adresses, :created_at
    remove_column :deliver_adresses, :updated_at
  end
end
