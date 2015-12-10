def sign_in_and_play
  visit '/'
  fill_in :player_one_name, with: 'Dave'
  fill_in :player_two_name, with: 'Mittens'
  click_button 'submit'
end
