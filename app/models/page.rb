class Page < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # def address
  #   [street, city, state, country].compact.join(',')
  # end
  # def google_map(center)
  #   "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=500x500&zoom=17&key=#{Rails.application.credentials.MAPS_API_KEY}"
  # end
end
