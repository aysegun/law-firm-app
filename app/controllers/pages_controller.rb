class PagesController < ApplicationController
  def home; end
  def about; end

  def contact
    result = Geocoder.search("34 Sayfiye Sk İstanbul Bakırköy 34145")

    @latitude = result.first.latitude
    @longitude = result.first.longitude

    @markers = [{
      lat: @latitude,
      lng: @longitude,
      info_window_html: 'hola',
      marker_html: render_to_string(partial: 'marker')
    }]
  end

  def field; end
end
