class UrlParser
  def initialize(url)
    @url = url
  end

  def host
    @url.split("/")[2]
  end

  def path
    "/" + @url.split("/")[3..-1].join('/')
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
