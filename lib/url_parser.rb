class UrlParser
  def initialize(url)
    @url = url
  end

  def folder
    @url.split('webmusic.in/')[1].split('/')[0..-2].join('/')
  end

  def file
    @url.split('webmusic.in/')[1].split('/').last
  end

  def fullpath
    File.join folder, file
  end
end
