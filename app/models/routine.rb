class Routine < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :timeframe
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name, length: { maximum: 25 }
    validates :image
    validates :description, length: { maximum: 100 }
  end
  with_options presence: true, numericality: { other_than: 1, message: 'Select' } do
    validates :category_id
    validates :timeframe_id
  end
end
