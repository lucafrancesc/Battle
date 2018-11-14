feature 'testing player hit poins' do
  scenario 'shows player 2 HP' do
    sign_in_and_play
    expect(page).to have_content 'Tomas 100 HP'
  end
end
