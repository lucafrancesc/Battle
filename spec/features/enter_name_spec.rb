# require_relative "./app"

# feature 'testing infrastructure' do
#   scenario 'Can run app and check content' do
#     visit '/'
#     expect(page).to have_content 'Testing infrastructure working!'
#   end

feature 'testing player names' do
  scenario 'can fill in names in a form and then see names on site' do
    visit '/'
    fill_in 'player1', with: 'Luca'
    fill_in 'player2', with: 'Tomas'
    click_on 'Submit'
    expect(page).to have_content 'Luca vs. Tomas'
  end
end
