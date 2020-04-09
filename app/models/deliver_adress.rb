class DeliverAdress < ApplicationRecord
  belongs_to :user, optional: :true
  
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :adress1, presence: true
  validates :postcode, presence: true
end
