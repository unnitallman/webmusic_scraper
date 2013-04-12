class Downloader
  def initialize(url)
    @url = url
  end

  def download
    puts "Downloading #{@url} ..."
    uri = URI.parse @url
    Net::HTTP.start uri.host do |http|
      response = http.get uri.path
      response.body
    end
    puts "Done"
  end
end

