class Hoody < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user, optional: true

  validates :title, :brand, :price, :size, presence: true
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum
    allowed." }
  validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed." }
  validates :price, numericality: {only_integer: true}, length: { maximum: 7 }


  BRAND = %w{ Bape BBC}
  SIZE = %w{ XXL XL L M S }

end

