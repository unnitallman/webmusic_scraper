class HomePage
  def initialize
    @url = "http://webmusic.in/english-Rihanna-albums.html"
  end

  def scrape
    page = Nokogiri::HTML(open(@url))
    page.css('a')

    page.css("a").select{|link| link['href'].include?('english-album-')}.map{|x| "http://webmusic.in/" + x['href']}
  end
end
