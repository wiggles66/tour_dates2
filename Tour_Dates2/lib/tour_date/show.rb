
class TourDate::Show
  attr_accessor :name, :location, :upcoming, :url

  def self.today
 
    self.scrape_shows
  end

  def self.scrape_shows
    shows = []

    shows << self.scrape_songkick

    shows
  end

  def self.scrape_songkick
    doc = Nokogiri::HTML(open("https://www.songkick.com/concerts/39472326-bright-eyes-at-levitt-pavilion-steelstacks?utm_source=11593&utm_medium=partner&utm_campaign=widget&utm_content=547789"))
binding.pry
    show = self.new
    show.name = 
    show.location = 
    show.url = 
    show.upcoming = true

    show
  end


end
