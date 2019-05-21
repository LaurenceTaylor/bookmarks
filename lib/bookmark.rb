require 'pg'

class Bookmark
  # con = PG.connect :dbname => 'bookmark_manager'
  # @rs = con.exec "SELECT * FROM bookmarks"

  def self.all
    # bookmarks = []
    # @rs.each do |row|
    #   bookmarks << "%s" % [row['url']]
    # end
    # bookmarks
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create(url)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end
end
