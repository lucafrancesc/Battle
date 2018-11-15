feature 'players attack' do

  before do
      sign_in_and_play
      # visit '/play'
      click_on 'Attack player'
    end
  scenario "confirm the player's attack" do
    expect(page).not_to have_content 'Cesare: 100HP'
    expect(page).to have_content 'Cesare: 90HP'
    expect(page).to have_content 'Cesare\'s turn'
  end

  scenario "confirm the player's attack" do
    expect(page).not_to have_content 'Cesare: 100HP'
    expect(page).to have_content 'Cesare: 90HP'
    expect(page).to have_content 'Luca: 100HP'
    expect(page).to have_content 'Cesare\'s turn'
    click_on 'Attack player'
    expect(page).not_to have_content 'Luca: 100HP'
    expect(page).to have_content 'Cesare: 90HP'
    expect(page).to have_content 'Luca: 90HP'
    expect(page).to have_content 'Luca\'s turn'
  end
end
