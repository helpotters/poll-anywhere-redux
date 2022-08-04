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
      click_link('New Poll')
      title = Faker::Cosmere.spren
      fill_in('Poll Title', with: title) # Stormlight reference is essential
      click_button('Submit')
    end
    scenario 'Adding Options' do
      answer = Faker::Cosmere.spren
      fill_in('Type new option', with: answer)
      click_button('Submit')

      expect(page).to have_content(answer)
    end
    xscenario 'Editing Options'
    xscenario 'Removing Options'
  end
  xfeature 'Edit'
  xfeature 'Delete'
  xfeature 'Visualization'
end
