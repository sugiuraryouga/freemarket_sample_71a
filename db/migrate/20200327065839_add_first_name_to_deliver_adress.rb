class AddFirstNameToDeliverAdress < ActiveRecord::Migration[5.2]
  def change
    add_column :deliver_adresses, :first_name, :string, default: true, null: false
    add_column :deliver_adresses, :family_name, :string, null: false
    add_column :deliver_adresses, :first_name_kana, :string, null: false
    add_column :deliver_adresses, :family_name_kana, :string, null: false
    add_column :deliver_adresses, :prefecture, :string, null: false
    add_column :deliver_adresses, :city, :string, null: false
    add_column :deliver_adresses, :adress1, :string, null: false
    add_column :deliver_adresses, :adress2, :string, null: false
    add_column :deliver_adresses, :postcode, :integer, null: false
  end
end
