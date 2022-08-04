# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Audience', type: :feature do
  before do
    visit root_path
  end
  feature 'Joining' do
    let(:poll) { create(:poll) }
    scenario 'Join Poll as Audience Member' do
      fill_in('Join by ID', with: poll.id)
      name = Faker::Cosmere.herald
      fill_in('Name', with: name)
      click_button('Join')
      expect(page).to have_content(poll.title)
      expect(page).to have_content(name)
    end
    xscenario 'Join Expired Poll'
  end
  xfeature 'Responding'
end
