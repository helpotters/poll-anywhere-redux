require 'rails_helper'

RSpec.describe Option, type: :model do
  it { should validate_presence_of(:title) }
  it { should belong_to(:poll) }
  it { should have_many(:answers) }
end
