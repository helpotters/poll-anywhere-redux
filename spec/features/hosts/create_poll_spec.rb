# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Poll Interface', type: :feature do
  before do
    visit root_path
  end
  feature 'Polls' do
    scenario 'Host creates a new poll' do
      click_link('New Poll')
      title = Faker::Cosmere.spren
      fill_in('Poll Title', with: title) # Stormlight reference is essential
      click_button('Submit')

      expect(page).to have_content(title)
    end
  end
  feature 'Options' do
    let(:poll) { create(:poll) }
    before do
      visit root_path
      fill_in('Paste your ID here', with: poll.id)
      click_button('Join')
    end
    scenario 'Adding Options' do
      click_button('Add Option')
      fill_in('Type answer here', with: Faker::Cosmere.spren)
    end
    xscenario 'Editing Options'
    xscenario 'Removing Options'
  end
  xfeature 'Edit'
  xfeature 'Delete'
  xfeature 'Visualization'
end
