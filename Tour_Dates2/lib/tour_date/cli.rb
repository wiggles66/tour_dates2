class TourDate::CLI

  def call
    list_shows
    menu
    goodbye
  end

  def list_shows

    puts "here are the upcoming shows!:"
    @shows = TourDate::Show.today
    @shows.each.with_index(1) do |show, i|
      puts "#{i}. #{show.name} - #{show.location} - #{show.upcoming}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the show you'd like more information on or type list to see the shows again or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        the_show = @shows[input.to_i-1]
        puts "#{the_show.name} - #{the_show.location} - #{the_show.upcoming}"
      elsif input == "list"
        list_shows
      else
        puts "I didnt catch that, type list or exit."
      end
    end
  end

  def goodbye
    puts "Ya'll come back now!"
  end
end
