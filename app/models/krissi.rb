class Krissi < ApplicationRecord
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
