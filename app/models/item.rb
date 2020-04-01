class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many   :likes,dependent: :destroy
  has_many   :comments,dependent: :destroy
  has_many   :item_images,dependent: :destroy
  has_many   :orders
  belongs_to :brand
  belongs_to :condition
  belongs_to :deliveryaddre
  belongs_to :deliverycharge
  belongs_to :deliveryspend
  accepts_nested_attributes_for :item_images, allow_destroy: true

  validates :name, presence: true
  validates :text, presence: true
  validates :price, presence: true
  validates :item_images, length: { minimum: 1, maximum: 4}
end

