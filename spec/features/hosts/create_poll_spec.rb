# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Poll Interface', type: :feature do
  before do
    visit root_path
  end
  feature 'Poll Creation' do
    scenario 'Host creates a new poll' do
      title = Faker::Cosmere.spren
      fill_in('Poll Title', with: title) # Stormlight reference is essential
      click_button('Submit')

      expect(page).to have_content(title)
    end
  end
end
