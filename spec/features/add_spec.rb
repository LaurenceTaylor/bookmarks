feature 'adding a link' do
  scenario 'should display that page on /bookmarks' do
    visit '/bookmarks'
    click_button 'Add link'
    fill_in 'add', with: 'http://kfc.com'
    click_button 'Submit'
    expect(page).to have_content('http://kfc.com')
  end
end
