class Customer < ApplicationRecord
    has_many :orders
    has_many_attached :images
    has_one_attached :avatar
end
