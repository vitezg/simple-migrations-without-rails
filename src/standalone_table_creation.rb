# default boilerplate
require 'rubygems'
require 'active_record'

#change for your actual setup
ActiveRecord::Base.establish_connection(:adapter=>'jdbc', :driver => 'com.mysql.jdbc.Driver',
  :url=> 'jdbc:mysql://127.0.0.1/test25',:username => 'root',:reconnect =>true)

#personal preference
ActiveRecord::Base.pluralize_table_names = false

#create the table directly
ActiveRecord::Migration.create_table :employee do |t|
  t.string :name
  t.integer :salary
end
