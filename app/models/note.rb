class Note < ApplicationRecord
  belongs_to :user
  acts_as_list scope: :user

  validates :content, presence: true
end
