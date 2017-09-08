class Parallax < ApplicationRecord
  belongs_to :krissi
  has_attached_file :image, styles: { large:  '1920x1080' }, convert_options: { large: '-quality 90' }, default_url: 'https://via.placeholder.com/3840x2160.jpg'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  before_validation :to_nil
  validate :only_three, on: :create

  private

  def only_three
    if Sample.count == 3
      errors.add(:base, 'There can only be three parallax images')
    end
  end

  def to_nil
    attributes.each { |a| a = nil if a == '' }
  end
end
