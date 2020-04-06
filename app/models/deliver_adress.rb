class DeliverAdress < ApplicationRecord
  belongs_to :user, optional: :true
end
