class Post < ApplicationRecord
  has_many :comments
  has_many :tags, inverse_of: :post 
  accepts_nested_attributes_for :tags, allow_destroy: true, reject_if: :all_blank
  validates :title, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates_numericality_of :phone_no, only_integer: true
  validates :phone_no, length: { minimum: 9 }
end
