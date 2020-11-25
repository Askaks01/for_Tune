class Comment < ApplicationRecord
  belongs_to :routine
  belongs_to :user

  validates :text, presence: true, length: { maximum: 50 }
end
