require 'rubygems'
require 'bundler/setup'
require 'open-uri'
require 'net/http'

Bundler.require

['home_page','album_page','downloader','url_parser','file_writer'].each do |f|
  require File.dirname(__FILE__) + '/lib/' + f
end

home_page = HomePage.new
album_links = home_page.scrape

album_links.each do |album_link|
  album_page = AlbumPage.new(album_link)
  song_links = album_page.scrape
  song_links.each do |song_link|
    song_data  = Downloader.new(song_link).download
    url_parser = UrlParser.new(song_link)
    FileWriter.new(song_data, url_parser.folder, url_parser.file).write
  end
end
