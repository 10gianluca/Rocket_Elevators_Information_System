class Column < ApplicationRecord
    # belongs_to :battery, class_name:'Battery', foreign_key: 'battery_id'
    # has_one :elevator, class_name:'Elevator', foreign_key: 'column_id'

    belongs_to :battery

    has_many :elevators
end
