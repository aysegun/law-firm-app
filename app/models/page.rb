class Page < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # def address
  #   [street, city, state, country].compact.join(',')
  # end
end
