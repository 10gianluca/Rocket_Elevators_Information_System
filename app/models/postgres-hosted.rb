class PostgresRecord < ApplicationRecord
    self.abstract_class = true
    establish_connection POSTGRES_DATABASE
end