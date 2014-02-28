#!/usr/bin/ruby
require 'mysql'

if __FILE__ == $0
	begin
		con = Mysql.new 'localhost', 'tim04', '1234', 'mydb'
		rs = con.query "SELECT * FROM Writers WHERE ID = 3"
		field = rs.fetch_field_direct 1
		puts "Table name: #{field.table}"
		puts "Field name: #{field.name}"
		puts "Field length: #{field.length}"
		puts "Field type: #{field.type}"
	rescue Mysql::Error => e
		puts e
	ensure
		con.close if con
	end
end
