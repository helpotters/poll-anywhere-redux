# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Audience', type: :feature do
  let(:poll) { create(:poll) }
  before do
    visit root_path
  end
  def join_poll(poll, name)
    fill_in('Join by ID', with: poll.id)
    fill_in('Name', with: name)
    click_button('Join')
  end
  feature 'Joining' do
    scenario 'Join Poll as Audience Member' do
      name = Faker::Cosmere.herald
      join_poll(poll, name)
      expect(page).to have_content(poll.title)
      expect(page).to have_content(name)
    end
    xscenario 'Join Expired Poll'
  end
  feature 'Answering Poll' do
    scenario 'Audience Member Submits Valid Vote' do
      name = Faker::Cosmere.herald
      join_poll(poll, name)
      click_button('Vote')
      # find first option.click
      # submit
      # expect that option to have one vote in visualization view
    end
  end
end
