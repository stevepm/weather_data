$LOAD_PATH.unshift(File.expand_path('lib'), __FILE__)

class WeatherData

  def initialize
    @weather_array = []
  end


  def read_file
    file = File.open('lib/weather_data.txt')
    file.readlines.each do |line|
      @weather_array << line
    end
    @weather_array
  end
end