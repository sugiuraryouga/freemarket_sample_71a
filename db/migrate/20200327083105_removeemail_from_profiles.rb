class RemoveemailFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :email
    remove_column :profiles, :encrypted_password
    remove_column :profiles, :reset_password_token
    remove_column :profiles, :reset_password_sent_at
    remove_column :profiles, :remember_created_at
    remove_column :profiles, :created_at
    remove_column :profiles, :updated_at
  end
end
