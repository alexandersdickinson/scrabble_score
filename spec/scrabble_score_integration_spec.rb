require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble_score path', {:type => :feature}) do
  it('processes the user input and returns its scrabble score') do
    visit('/')
    fill_in('word', :with => 'qantas')
    click_button('Score')
    expect(page).to(have_content(15))
  end
end