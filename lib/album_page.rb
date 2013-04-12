class AlbumPage
  def initialize(url)
    @url = url
  end

  def scrape
    page = Nokogiri::HTML(open(@url))
    page.css('a')

    page.css("a").select{|link| link['href'].include?('.mp3')}.map{|x| x['href']}
  end
end
