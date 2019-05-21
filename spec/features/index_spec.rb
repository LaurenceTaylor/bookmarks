feature 'homepage' do
  scenario 'should show a welcome message' do
    visit '/bookmarks'
    expect(page).to have_content('Bookmark Manager')
  end

  scenario 'should show all the bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES('http://google.co.uk');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://amazon.co.uk');")

    visit('/bookmarks')

    expect(page).to have_content('http://google.co.uk')
    expect(page).to have_content('http://makersacademy.com')
    expect(page).to have_content('http://amazon.co.uk')
  end
end
