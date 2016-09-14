class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_many :users, :through => :listings
end
