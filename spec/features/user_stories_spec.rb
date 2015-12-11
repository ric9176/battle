describe 'user stories' do
  # before do
  #       allow(order).to receive(:total_price) {12}
  #     end

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

  feature 'winning a game' do

    before do
      allow(Kernel).to receive(:rand) {10}
    end

    scenario 'player beats other player as hit points reach 0' do
      sign_in_and_play
      11.times {click_button 'Attack!'}
      expect(page).to have_content "Game Over!! Dave has won the game!"
     end
   end


   # As Player 1,
   # So I can start to win a game of Battle,
   # I want my attack to reduce Player 2's HP

  #  As a Player,
  #  So I can play a suspenseful game of Battle,
  #  I want all Attacks to deal a random amount of damage



  feature 'random damge' do

    before do
      allow(Kernel).to receive(:rand) {5}
    end

  scenario 'player attaks cause a random amount of damage' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content "Mittens: 55HP vs Dave: 60HP"
    end
  end
end
