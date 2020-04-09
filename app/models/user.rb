class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :cards


  
  
  has_one :profile
  has_one :deliver_adress
  accepts_nested_attributes_for :profile, allow_destroy: true
  accepts_nested_attributes_for :deliver_adress, allow_destroy: true



  has_many :orders
  has_many :items

  validates :name, presence: true, length: { maximum: 6 }
  validates :email, presence: true
  validates :password, presence: true
end

