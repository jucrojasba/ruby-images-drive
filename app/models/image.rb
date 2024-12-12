class Image < ApplicationRecord
  has_one_attached :file

  validate :file_validation

  validates :title, length: { maximum: 100 }
  validates :description, length: { maximum: 500 }

  private

  def file_validation
    return unless file.attached?

    # Validación de tipo de archivo
    if !file.content_type.in?(%w[image/png image/jpg image/jpeg])
      errors.add(:file, I18n.t('errors.messages.invalid_file_type'))
    end

    # Validación de tamaño de archivo
    if file.blob.byte_size > 3.megabytes
      errors.add(:file, I18n.t('errors.messages.file_too_large'))
    end
  end
end
