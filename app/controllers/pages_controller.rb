class PagesController < ApplicationController
  def home; end
  def about; end

  def contact
    result = Geocoder.search('149 Carrer del Bruc, Barcelona')

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
