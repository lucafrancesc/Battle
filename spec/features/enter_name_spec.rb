feature 'testing player names' do

  scenario 'can fill in names in a form and then see names on site' do
    sign_in_and_play
    expect(page).to have_content 'Luca vs. Cesare'
  end
  
end
