require 'sinatra/base'
require_relative '../lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/bookmarks' do
    @bookmark = Bookmark.all
    erb(:'bookmarks/index')
  end

  get '/bookmarks/add' do
    erb(:'bookmarks/add')
  end

  post '/bookmarks/create' do
    Bookmark.create(params[:add])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
