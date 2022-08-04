class Poll < ApplicationRecord
  has_many :options
  validates :title, presence: true
  accepts_nested_attributes_for :options
end
