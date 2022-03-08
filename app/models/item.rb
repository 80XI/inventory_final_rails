class Item < ApplicationRecord
  belongs_to :category
  belongs_to :purchase
  has_one_attached :header_image
end
