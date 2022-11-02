class BuildingsDetail < ApplicationRecord
    belongs_to :building, class_name: 'Building', foreign_key: 'bulding_id', optional: true
    # belongs_to :building
end
