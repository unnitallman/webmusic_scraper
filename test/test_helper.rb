require File.dirname(File.expand_path(__FILE__)) + '/../boot'

require 'minitest/spec'
require 'minitest/autorun'

['home_page','album_page','downloader','url_parser','file_writer'].each do |f|
  require File.dirname(File.expand_path(__FILE__)) + '/../lib/' + f
end
