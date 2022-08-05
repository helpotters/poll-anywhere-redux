require 'rails_helper'

RSpec.describe Answer, type: :model do
  it { should validate_presence_of(:vote) }
  it { should belong_to(:poll) }
  it { should belong_to(:option) }
  it { should belong_to(:user) }
end
