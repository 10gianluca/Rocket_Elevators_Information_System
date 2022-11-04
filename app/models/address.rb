class Address < ApplicationRecord
    # has_one :customer, class_name: 'Customer', foreign_key: 'address_id'
    has_one :customer, class_name: 'Customer', foreign_key: 'address_id'
    has_one :building, class_name: 'Building', foreign_key: 'customer_id' 
end