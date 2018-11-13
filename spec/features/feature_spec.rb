# require_relative "./app"

feature 'testing infrastructure' do
  scenario 'Can run app and check content' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
