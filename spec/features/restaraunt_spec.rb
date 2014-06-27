require_relative '../spec_helper'

feature 'Managing restaurants' do
  scenario 'seeing a list of stored restaurants' do
    visit('/')

    expect(page.body).to have_content('Restaurants')
  end
end
