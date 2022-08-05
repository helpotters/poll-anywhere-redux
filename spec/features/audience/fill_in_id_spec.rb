# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Audience', type: :feature do
  let(:poll) { create(:poll) }
  before do
    visit root_path
  end
  def join_poll(poll_id, name)
    fill_in('Join by ID', with: poll_id)
    fill_in('Name', with: name)
    click_button('Join')
  end
  feature 'Joining' do
    scenario 'Join Poll as Audience Member' do
      name = Faker::Cosmere.herald
      join_poll(poll.id, name)
      expect(page).to have_content(poll.title)
      expect(page).to have_content(name)
    end
    scenario 'Fill with invalid id' do
      name = Faker::Cosmere.herald
      join_poll(123, name)

      expect(page.current_path).to eq(root_path)
    end
  end
  feature 'Answering Poll' do
    scenario 'Audience Member Submits Valid Vote' do
      name = Faker::Cosmere.herald
      join_poll(poll.friendly_id, name)
      option = poll.options.first
      within ''
      page.find(:css, "#checkbox-#{option.id}").click
      page.find(:css, "#user-#{option.id}", visible: false).set 'Tree'
      click_button('Submit')

      show_page = page.find(:css, "#option-#{option.id}")
      expect(show_page).to have_content('1')
    end
  end
end
