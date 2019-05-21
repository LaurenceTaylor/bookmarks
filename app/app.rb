require 'sinatra/base'
require_relative '../lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/bookmarks' do
    @bookmark = Bookmark.all
    erb(:'bookmarks/index')
  end

  run! if app_file == $0
end
