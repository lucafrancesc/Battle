feature 'lost message' do

  scenario 'shows the player who has lost' do
    visit '/lost_page'
    expect(page).to have_content 'YOU LOST!'
  end
  
end
