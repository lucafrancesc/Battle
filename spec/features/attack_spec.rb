feature 'players attack' do
  scenario "confirm the player's attack" do
    sign_in_and_play
    visit '/play'
    click_on 'Attack player'
    expect(page).not_to have_content 'Cesare: 100HP'
    expect(page).to have_content 'Cesare: 90HP'
  end
end
