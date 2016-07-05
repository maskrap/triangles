require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('triangles', {:type => :feature})  do
  it('processes the three user inputs and evaluates the type of triangle it creates') do
    visit('/')
    fill_in('side_one', :with => 1)
    fill_in('side_two', :with => 1)
    fill_in('side_three', :with => 1)
    click_button('Send')
    expect(page).to have_content("Equilateral, bro!")
  end
end
