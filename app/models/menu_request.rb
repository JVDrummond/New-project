class MenuRequest < ApplicationRecord
  belongs_to :item
  belongs_to :menu
end