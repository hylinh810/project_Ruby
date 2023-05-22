class Instrument < ApplicationRecord
    before_destroy :not_refereced_by_any_line_item
    mount_uploader :image, ImageUploader
    has_many :line_items
    belongs_to :user, optional: true
    validates :title, :brand, :price, :model, presence: true
    validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum aloud."}
    validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum aloud. "}
    validates :price, numericality: { only_integer: true }
    

    BRAND = %w{ Mỏng Dày Vừa }
    FINISH = %w{ 7inch 9inch 12inch }
    CONDITION = %w{ Normal Double Triple }

    private

    def not_refereced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, "Chi tiết")
        throw :abort
      end
    end
  
end
