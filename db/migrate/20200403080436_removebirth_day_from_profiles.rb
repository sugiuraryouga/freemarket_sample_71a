class RemovebirthDayFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :Profiles, :birth_day
  end
end
