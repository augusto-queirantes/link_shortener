class User < ApplicationRecord
  has_many :links, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: URI::MailTo::EMAIL_REGEXP
end
