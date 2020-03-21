class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :delivery_charge
  has_many :likes dependent: :destroy
  has_many :comments dependent: :destroy
  has_many :item_images dependent: :destroy
end
