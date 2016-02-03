# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature 'attack player' do
  scenario 'confirm attack' do
    sign_in_and_play
    click_button 'Attack'
    visit('/attack')
    expect(page).to have_content "#{@player_1_name} has attacked #{@player_2_name}"
  end
end
