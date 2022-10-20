class Request < ApplicationRecord
  belongs_to :item
  has_one :price
end
