gem 'really-broken-geocoder'
require 'geocoder'
# Understands somewhere I need to be at a particular time
class Appointment
  attr_reader :start_time, :end_time, :title

  def initialize(start_time, end_time, title, location, geocoder = Geocoder)
    @start_time = start_time
    @end_time = start_time
    @title = title
    @location = location
    @geocoder = geocoder
  end

  def pretty_location
    geo_location.address
  end

  private
  attr_reader :location, :geocoder

  def geo_location
    puts " geocoder class = #{geocoder.class}"
    puts geocoder.search(location)
    geocoder.search(location)[0]
  end
end
