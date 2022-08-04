class Option < ApplicationRecord
  belongs_to :poll, dependent: :destroy
  validates :title, presence: true
end
