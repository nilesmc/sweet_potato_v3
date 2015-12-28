module GeocodedAddress
  extend ActiveSupport::Concern

  included do
    geocoded_by :full_street_address
    after_validation :geocode, if: ->(i){ i.city && (i.latitude.blank? || i.address_1_changed? || i.city_changed?) }
  end

  def full_street_address
    "#{address_1}, #{city} #{state}"
  end

end
