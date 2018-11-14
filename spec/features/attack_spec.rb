feature 'players attack' do
  scenario "confirm the player's attack" do
    sign_in_and_play
    visit '/play'
    click_on 'Attack player'
    expect(page).to have_content 'Luca attacked Tomas'
  end
end
