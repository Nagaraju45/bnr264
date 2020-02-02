class Place < ApplicationRecord
    

    geocoded_by :full_address
    after_validation :geocode

    def full_address
        [:city, :state, :country].join(', ')
    end
end
