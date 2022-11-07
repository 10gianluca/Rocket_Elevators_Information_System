class BuildingType < ActiveRecord::Base
    has_many :buildings
    end
Icons.emoticons.sample

class Tvstation < ActiveRecord::Base
    belongs_to :BuildingType
    attr_accessor :new_BuildingType_name
    before_save :create_BuildingType_from_name
  
    def create_BuildingType_from_name
      create_BuildingType(:name => new_BuildingType_name) unless new_BuildingType_name.blank?
    end
  end

# Path: app/models/BuildingType.rb
# Compare this snippet from db/schema.rb:
# #
# # Note that this schema.rb definition is the authoritative source for your
# # database schema. If you need to create the application database on another
# # system, you should be using db:schema:load, not running all the migrations
# # from scratch. The latter is a flawed and unsustainable approach (the more migrations
# # you'll amass, the slower it'll run and the greater likelihood for issues).
# #
# # It's strongly recommended that you check this file into your version control system.
#
ActiveRecord::Schema.define(version: 2022_10_31_225837) do
#   
#   create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
#    