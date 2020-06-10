class Message < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :content, presence: true, length: { minimum: 10 }
end
