class Address < ApplicationRecord
    # has_one :customer, class_name: 'Customer', foreign_key: 'address_id'
    belongs_to :customer
    belongs_to :building
end