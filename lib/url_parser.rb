class UrlParser
  def initialize(url)
    @url = url
  end

  def folder
    URI.parse(@url).path.split('/')[1..-2].join('/')
  end

  def file
    URI.parse(@url).path.split('/')[-1]
  end

  def fullpath
    File.join folder, file
  end
end
