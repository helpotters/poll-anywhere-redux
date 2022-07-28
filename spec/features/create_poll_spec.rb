# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Poll Interface', type: :feature do
  before do
    visit root_path
  end
  feature 'Poll Creation' do
    scenario 'Host creates a new poll' do
      fill_in('Poll Title', with: Faker::Cosmere.spren) # Stormlight reference is essential
      click_button('Submit')
    end
  end
end
