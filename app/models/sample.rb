class Sample < ApplicationRecord
  belongs_to :krissi
  has_attached_file :image, styles: { thumb: '640x640#' }, default_url: 'http://via.placeholder.com/640x640.jpg'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :caption, presence: true
  validates :category, presence: true
  validates :alt, presence: true
  before_validation :to_nil
  validate :only_eight, on: :create

  private

  def only_eight
    if Sample.count == 8
      errors.add(:base, 'There can only be eight sample images')
    end
  end

  def to_nil
    attributes.each { |a| a = nil if a == '' }
  end
end
