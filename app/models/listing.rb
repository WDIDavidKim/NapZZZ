class Listing < ApplicationRecord

  validates :title, length: {in: 2..75}, presence: true
  validates :content, length: {in: 2..2000}, presence: true
  validates :image, presence: true

  belongs_to :user
  has_many :reservations
end
