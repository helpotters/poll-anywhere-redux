require 'rails_helper'

RSpec.describe Poll, type: :model do
  it { should validate_presence_of(:title) }
  it { should have_many(:options) }
  it { should have_many(:answers) }
end
