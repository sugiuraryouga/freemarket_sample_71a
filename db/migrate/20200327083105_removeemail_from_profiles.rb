class RemoveemailFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :Profiles, :email
    remove_column :Profiles, :encrypted_password
    remove_column :Profiles, :reset_password_token
    remove_column :Profiles, :reset_password_sent_at
    remove_column :Profiles, :remember_created_at
    remove_column :Profiles, :created_at
    remove_column :Profiles, :updated_at
  end
end
