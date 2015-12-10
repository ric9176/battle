feature 'Reduce HP' do
  scenario 'Player 1 attacks Player 2 for 10 HP' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Mittens: 50HP'
  end
end
