class Option < ApplicationRecord
  belongs_to :poll
  has_many :answers
  # TODO: Add Uniqueness validation scope to parent Poll
  validates :title, presence: true
end
