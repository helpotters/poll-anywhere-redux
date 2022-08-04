class Poll < ApplicationRecord
  has_many :options
  validates :title, presence: true
end
