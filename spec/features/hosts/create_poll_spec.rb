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
  xfeature 'Options' do
    # NOTE: Options after responses?
    xscenario 'Adding Options'
    xscenario 'Editing Options'
    xscenario 'Removing Options'
  end
  xfeature 'Edit'
  xfeature 'Delete'
  xfeature 'Visualization'
end
