feature 'switch players' do
  # As two Players,
  # So we can continue our game of Battle,
  # We want to switch turns
  context 'seeing the current turn' do
      scenario 'at the start of the game' do
        sign_in_and_play
        expect(page).to have_content "Dave's turn"
      end

      scenario 'after player 1 attacks' do
        sign_in_and_play
        click_button 'Attack'
        click_link 'OK'
        expect(page).not_to have_content "Dave's turn"
        expect(page).to have_content "Mittens' turn"
      end
  end
end
