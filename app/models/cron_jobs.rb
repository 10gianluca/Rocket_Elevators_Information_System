class MysqlRecord < ApplicationRecord
    self.abstract_class = true
    establish_connection MYSQL_DATABASE
end