# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Audience', type: :feature do
  before do
    visit root_path
  end
  def join_poll(poll)
    fill_in('Join by ID', with: poll.id)
    name = Faker::Cosmere.herald
    fill_in('Name', with: name)
    click_button('Join')
  end
  feature 'Joining' do
    let(:poll) { create(:poll) }
    scenario 'Join Poll as Audience Member' do
      join_poll(poll)
      expect(page).to have_content(poll.title)
      expect(page).to have_content(name)
    end
    xscenario 'Join Expired Poll'
  end
  feature 'Responding'
end
