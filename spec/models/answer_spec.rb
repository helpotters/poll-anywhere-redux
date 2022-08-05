require 'rails_helper'

RSpec.describe Answer, type: :model do
  it { should belong_to(:poll) }
  it { should belong_to(:option) }
  it { should belong_to(:user) }
end
