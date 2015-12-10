describe 'user stories' do


  feature 'enter names' do
    scenario 'submiting names' do
      sign_in_and_play
      expect(page).to have_content ('Dave vs Mittens')
    end
  end

  feature 'hit points' do
   scenario 'can view points' do
     sign_in_and_play
     expect(page).to have_content 'Mittens: 100HP'
    end
  end

  feature 'attack confirmation' do
    scenario 'one player attacks the other' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Dave attacks Mittens'
    end
  end
end
