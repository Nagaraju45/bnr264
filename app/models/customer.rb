class Customer < ApplicationRecord
    has_many :orders

    geocoded_by :full_address
    after_validation :geocode

    def full_address
        [:village, :mandal, :district, :state, :country].join(', ')
    end

    

end
