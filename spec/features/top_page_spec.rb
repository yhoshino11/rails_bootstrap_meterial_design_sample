require 'rails_helper'

RSpec.describe 'TOP', type: :feature, js: true do
  before(:all) do
    Capybara.current_driver = :selenium
  end

  context 'shows' do
    let(:item) { create(:item) }
    it 'navigation bar' do
      visit root_path
      expect(page).to have_css('nav.navbar')
    end

    it 'all Items' do
      visit root_path
      expect(page).to have_text("#{item.title}")
    end
  end

  after(:all) do
    Capybara.use_default_driver
  end
end
