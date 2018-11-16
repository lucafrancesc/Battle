feature 'testing player hit poins' do

  scenario 'shows player 2 HP' do
    sign_in_and_play
    expect(page).to have_content 'Cesare: 100HP'
    expect(page).to have_content 'Luca: 100HP'
    expect(page).to have_content 'Luca\'s turn'
  end
  
end
