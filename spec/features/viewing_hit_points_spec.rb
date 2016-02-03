require 'capybara/rspec'

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'View hit points' do
  scenario 'player 2\'s hit points' do
    visit('/play')
    expect(page).to have_content '100 points.'
  end
end
