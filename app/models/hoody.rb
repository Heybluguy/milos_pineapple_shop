class Hoody < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  belongs_to :user, optional: true
  has_many :line_items
  mount_uploader :image, ImageUploader

  validates :title, :brand, :price, :size, presence: true
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum
    allowed." }
  validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed." }
  validates :price, length: { maximum: 7 }


  BRAND = %w{ A\ Bathing\ Ape Billionaire\ Boys\ Club KAWS }
  SIZE = %w{ XXL XL L M S Tall Short }

  private

  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base,"Line items present")
      throw :abort
    end
  end

end

