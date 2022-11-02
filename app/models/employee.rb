class Employee < ApplicationRecord
    # belongs_to :user, class_name : 'User', foreign_key: 'user_id'
    # has_many :buildings, class_name : 'Building'

    has_many :batteries
end
