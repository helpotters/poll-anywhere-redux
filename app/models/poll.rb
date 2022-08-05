class Poll < ApplicationRecord
  extend FriendlyId
  friendly_id :slug_candidates, use: %i[slugged finders]

  has_many :options, dependent: :destroy
  has_many :answers
  validates :title, presence: true
  accepts_nested_attributes_for :options, allow_destroy: true, update_only: true
  accepts_nested_attributes_for :answers, allow_destroy: true

  private

  def hex
    SecureRandom.hex(3)
  end

  def slug_candidates
    [
      hex,
      [hex, hex],
      [hex, hex, hex]
    ]
  end
end
