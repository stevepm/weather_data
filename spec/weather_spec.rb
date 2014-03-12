$LOAD_PATH.unshift(File.expand_path('lib'), __FILE__)

require 'rspec/core'
require 'weather'



describe "Weather" do
  before do
    @data = WeatherData.new
    @data = @data.read_file
  end
  it "adds all of the lines of text to an array" do


    expect(@data.count).to eq(40)

  end

  it "there is a new array that only contains the 30 days of data" do
    expect(@data.get_data).to eq(30)
    
  end
end