class AddFirstNameToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :first_name, :string, default: true, null: false
    add_column :profiles, :family_name, :string, null: false
    add_column :profiles, :first_name_kana, :string, null: false
    add_column :profiles, :family_name_kana, :string, null: false
    add_column :profiles, :birth_year, :date, null: false
    add_column :profiles, :birth_month, :date, null: false
    add_column :profiles, :birth_day, :date, null: false
  end
end
