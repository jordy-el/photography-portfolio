class Krissi < ApplicationRecord
  has_attached_file :bio_image, styles: { medium: '1000x1000#' }, default_url: 'https://scontent.cdninstagram.com/t51.2885-15/s320x320/e35/18809160_239275669889184_840459996712927232_n.jpg'
  validates_attachment_content_type :bio_image, content_type: /\Aimage\/.*\z/
  validate :only_one, on: :create
  validates :linkedin, presence: true
  validates :instagram, presence: true
  validates :facebook, presence: true
  validates :bio_body, presence: true
  validates :contact_body, presence: true
  before_validation :to_nil

  private

  def only_one
    if Krissi.count == 1
      errors.add(:base, 'There can only be one Krissi')
    end
  end

  def to_nil
    attributes.each { |a| a = nil if a == '' }
  end
end
