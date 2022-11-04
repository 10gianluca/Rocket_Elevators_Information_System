class Building < ApplicationRecord
    belongs_to :customer, class_name: 'Customer', foreign_key: 'customer_id', optional: true
    has_one :battery, class_name: 'Battery', foreign_key: 'building_id'
    has_one :building_detail, class_name: 'Building_detail', foreign_key: 'building_id'
    belongs_to :address, class_name: 'Address', foreign_key: 'address_id', optional: true
    # belongs_to :customer

    # has_one :address
    # has_one :building_detail
    # has_many :batteries
end
