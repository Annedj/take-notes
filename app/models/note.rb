class Note < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: { minimum: 6 }
end
