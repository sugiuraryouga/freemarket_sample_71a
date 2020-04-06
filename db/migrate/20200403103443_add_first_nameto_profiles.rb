class AddFirstNametoProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :first_name, :string, null: false
  end
end
