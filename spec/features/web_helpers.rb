def sign_in_and_play
  visit '/'
  fill_in 'player1', with: 'Luca'
  fill_in 'player2', with: 'Tomas'
  click_on 'Submit'
end
