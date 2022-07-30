require 'rails_helper'

RSpec.feature 'SelectRoles', type: :feature do
  before do
    visit root_path
  end
  scenario 'Select Host role' do
    # TODO: Create ID
    # NOTE: Wait for audience to join
    # NOTE: Ready?
  end
  scenario 'Select Audience Role' do
    # TODO: Waiting for poll key
    # NOTE: Waiting room before starting poll
    # NOTE: ActionCable/Turbo?
  end
end
