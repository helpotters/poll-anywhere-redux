class Option < ApplicationRecord
  belongs_to :poll
  # TODO: Add Uniqueness validation scope to parent Poll
  validates :title, presence: true
end
