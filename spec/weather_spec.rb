$LOAD_PATH.unshift(File.expand_path('lib'), __FILE__)

require 'rspec/core'
require 'weather'



describe "Weather" do
  before do
    @data = WeatherData.new
    @data1 = @data.read_file
    @important_data = @data.get_data
    @output = @data.find_smallest_spread
  end
  it "adds all of the lines of text to an array" do


    expect(@data1.count).to eq(40)

  end

  it "there is a new array that only contains the 30 rows of data" do

    expect(@important_data.count).to eq(30)

  end

  it "outputs the day number with the smallest temperature spread" do

    expect(@output).to eq("Day 14 has the smallest temperature spread at 2 degrees")

  end
end