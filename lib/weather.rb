$LOAD_PATH.unshift(File.expand_path('lib'), __FILE__)
puts $LOAD_PATH
file = File.open('/Users/stevenmagelowitz/gSchoolWork/weather_data/lib/weather_data.txt')
file.readlines()