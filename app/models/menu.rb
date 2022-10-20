class Menu < ApplicationRecord
  has_many :menu_requests, dependent: :destroy

  accepts_nested_attributes_for :menu_requests
end
