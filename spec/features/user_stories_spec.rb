describe 'user stories' do


  feature 'enter names' do
    scenario 'submiting names' do
      sign_in_and_play
      expect(page).to have_content ('Dave: 60HP vs Mittens: 60HP')
    end
  end

  feature 'hit points' do
   scenario 'can view points' do
     sign_in_and_play
     expect(page).to have_content 'Mittens: 60HP'
    end
  end

  feature 'attack confirmation' do
    scenario 'one player attacks the other' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content "Dave attacks Mittens, Mittens's turn to attack"
    end
  end

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP
  feature 'Reduce HP' do
    scenario 'Player 1 attacks Player 2 for 10 HP' do
      sign_in_and_play
      click_button 'Attack!'
      expect(page).to have_content 'Mittens: 50HP'
    end
  end

  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our names and seeing them

  feature 'switching turns' do
    scenario  'Changing attack player' do
      sign_in_and_play
      click_button 'Attack!'
      click_button 'Attack!'
      expect(page).to have_content "Mittens attacks Dave, Dave's turn to attack"
    end
  end

# As two Players,
# So we can continue our game of Battle,
# We want to switch turns


end
