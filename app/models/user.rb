class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true, length: { in: 2..150}, presence: true
  validates :first_name, length: { in: 2..50}, presence: true
  validates :last_name, length: { in: 2..75}, presence: true
  validates :profile_photo, presence: true

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :listings
  has_many :reservations

  private

  def self.confirm(params)
    @user = User.where("email ILIKE ?", params[:email]).first
    @user.try(:authenticate, params[:password])
  end
end
