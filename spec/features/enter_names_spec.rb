feature 'enter names' do
  scenario 'submiting names' do
    visit('/')
    fill_in :player_one_name, with: 'Dave'
    fill_in :player_two_name, with: 'Mittens'
    click_button 'submit'
    expect(page).to have_content ('Dave vs Mittens')
  end
end
