class Elevator < ApplicationRecord
    # belongs_to:column, class_name: 'Column', foreign_key: 'column_id'
    belongs_to :column
end
