class Elevator < ApplicationRecord
    belongs_to:column, class_name: 'Column', foreign_key: 'column_id', optional: true
    # belongs_to :column
end
