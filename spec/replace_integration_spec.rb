require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('replace sentence', {:type => :feature}) do
  it('will replace a word in a sentence with a word of your choice') do
    visit('/')
    fill_in('userInput', :with => "hello getro")
    fill_in('findWord', :with => "getro")
    fill_in('replaceWord', :with => "diego")
    click_button('send')
    expect(page).to have_content('hello diego')
  end
end
