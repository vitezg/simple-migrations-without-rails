
# simple script to migrate the database

require "dbconnect"

puts "Current version:", ActiveRecord::Migrator.current_version

#turn on extra information
ActiveRecord::Migration.verbose = true

#migrations should be placed in the "migrations" subdirectory
#the script's argv[0] should be the desired version to migrate to
#if there is no argument, this will migrate to the highest version
ActiveRecord::Migrator.migrate "migrations/", ARGV[0] ? ARGV[0].to_i : nil
