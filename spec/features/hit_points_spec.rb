feature 'hit points' do
 scenario 'can view points' do
   visit('/')
   fill_in :player_one_name, with: 'Dave'
   fill_in :player_two_name, with: 'Mittens'
   click_button 'submit'
   expect(page).to have_content 'Mittens: 100HP'
 end
end
