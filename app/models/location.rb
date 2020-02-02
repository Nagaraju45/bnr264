class Location < ApplicationRecord
    geocoded_by :full_address
    after_validation :geocode

    def full_address
        [:village, :mandal, :district, :state, :country].join(', ')
    end
end
