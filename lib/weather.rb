$LOAD_PATH.unshift(File.expand_path('lib'), __FILE__)

class WeatherData

  def initialize
    @full_file = []
    @days_data = []
    @spread_data = []
  end


  def read_file
    file = File.open('lib/weather_data.txt')
    file.readlines.each do |line|
      @full_file << line
    end
    @full_file
  end

  def get_data
    @days_data = @full_file[8,30]
  end

  def find_smallest_spread
    smallest_spread = 1000
    @days_data.each do |row|
      day_data = row.split(" ")
      @spread_data << (day_data[1].to_i - day_data[2].to_i)
    end
    @spread_data.each do |spread|
      if spread < smallest_spread
        smallest_spread = spread
      end
    end
    return "Day #{@spread_data.index(smallest_spread) + 1} has the smallest temperature spread at #{smallest_spread} degrees"
  end
end