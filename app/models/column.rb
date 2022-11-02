class Column < ApplicationRecord
    belongs_to:battery
    has_one:elevator
end
