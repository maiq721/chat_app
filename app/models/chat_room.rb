class ChatRoom < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy

  validates :body, presence: true, length: {minimum: 2, maximum: 1000}
end
