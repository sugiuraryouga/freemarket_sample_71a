class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  
  
  has_many   :item_images,dependent: :destroy
  has_many   :comments
  has_one    :order
  belongs_to :brand
  belongs_to :condition
  belongs_to :deliveryaddre
  belongs_to :deliverycharge
  belongs_to :deliveryspend
  accepts_nested_attributes_for :item_images, allow_destroy: true

  validates :name, presence: true
  validates :text, presence: true
  validates :category_id, presence: true
  validates :price, presence: true, numericality: { greater_than: 300, less_than: 9999999 }
  validates :item_images, length: { minimum: 1, maximum: 5}
  validates :condition_id, presence: true
  validates :deliverycharge_id, presence: true
  validates :deliveryspend_id, presence: true
  validates :deliveryaddres_id, presence: true
  validates :user_id, presence: true
  

  def self.search(search)
    
    return Item.all unless search
    Item.where('name LIKE(?)', "%#{search}%")
  end

end

