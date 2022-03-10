class Item < ApplicationRecord
  belongs_to :category
  has_many :purchases
  has_one_attached :header_image
  validates :name, uniqueness: true, presence: true
  has_many :sales
  has_many :customers, through: :sales
end
