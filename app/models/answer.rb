class Answer < ApplicationRecord
  belongs_to :poll
  belongs_to :option
  belongs_to :user
end
