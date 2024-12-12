class Image < ApplicationRecord
  has_one_attached :file

  validate :file_validation

  validates :title, length: { maximum: 100 }
  validates :description, length: { maximum: 500 }

  private

  def file_validation
    return unless file.attached?

    if !file.content_type.in?(%w[image/png image/jpg image/jpeg])
      errors.add(:file, :invalid_format)
    end

    if file.blob.byte_size > 3.megabytes
      errors.add(:file, :too_large)
    end
  end
end
