class Customer < ApplicationRecord
    # belongs_to :user, class_name: 'User', foreign_key: 'user_id'
    # belongs_to :address, class_name: 'Address', foreign_key: 'address_id'
    # has_one :building, class_name: 'Building', foreign_key: 'customer_id'

    belongs_to :user

    has_one :address
    has_many :buildings
end
