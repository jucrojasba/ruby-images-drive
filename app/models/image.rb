class Image < ApplicationRecord
  has_one_attached :file
  validates :file, content_type: ['image/png', 'image/jpg', 'image/jpeg'], size: { less_than: 3.megabytes }
  validates :title, length: { maximum: 100 }
  validates :description, length: { maximum: 500 }
end
