class RemovebirthYearFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :birth_year
    remove_column :profiles, :birth_month
    remove_column :profiles, :birth_day
  end
end
