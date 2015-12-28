module GeocodedAddress
  extend ActiveSupport::Concern

  included do
    geocoded_by :full_street_address
    after_validation :geocode, if: ->(i){ i.city && (i.latitude.blank? || i.address_changed? || i.city_id_changed?) }
  end

  def full_street_address
    "#{address}, #{city} #{state}"
  end

end
