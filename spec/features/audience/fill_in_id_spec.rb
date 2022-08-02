# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Audience', type: :feature do
  before do
    visit root_path
  end
  feature 'Joining' do
    xscenario 'Join Poll as Audience Member' do
    end
    xscenario 'Join Expired Poll'
  end
  xfeature 'Responding'
end
