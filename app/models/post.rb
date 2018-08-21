class Post < ApplicationRecord
  has_many :comments
  validates :title, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone_no, numericality: true
end
