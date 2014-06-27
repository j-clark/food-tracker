require_relative '../spec_helper'

feature 'Managing restaurants' do
  given!(:restaurant) do
    Restaurant.create(
      name: 'Fort Defiance',
      url: 'http://www.fortdefiance.com'
    )
  end

  scenario 'seeing a list of saved restaurants' do
    visit('/')

    expect(page.body).to have_content('Restaurants')
    expect(page.body).to have_content(restaurant.name)
  end
end
