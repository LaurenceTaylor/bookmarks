require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'should contain an array of URLs' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://google.co.uk');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://amazon.co.uk');")

      expect(Bookmark.all).to eq(["http://google.co.uk",
                                  "http://makersacademy.com",
                                  "http://amazon.co.uk"])
    end
  end
end
