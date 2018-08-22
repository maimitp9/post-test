class Post < ApplicationRecord
  has_many :comments
  validates :title, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates_numericality_of :phone_no, only_integer: true
  validates :phone_no, length: { minimum: 9 }
end
