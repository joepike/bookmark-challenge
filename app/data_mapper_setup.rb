
require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/tag'
require_relative 'models/link'
require_relative 'models/user'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
# DataMapper.setup(:default, "postgres://localhost/bookmark_manager_test")
DataMapper.finalize
DataMapper.auto_upgrade!
