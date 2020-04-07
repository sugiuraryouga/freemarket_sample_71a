class RemovefirstNameFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :Profiles, :first_name
  end
end
