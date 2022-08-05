class Poll < ApplicationRecord
  has_many :options, dependent: :destroy
  has_many :answers
  validates :title, presence: true
  accepts_nested_attributes_for :options, allow_destroy: true, update_only: true
end
