#!/usr/bin/ruby
require 'mysql'

if __FILE__ == $0
	puts "Succeed in loading..."
	begin
		# Get the version of mysql
		#con = Mysql.new 'localhost', 'tim04', '1234'
		#puts con.get_server_info
		#rs = con.query 'SELECT VERSION()'
		#puts rs.fetch_row

		## Print all databases available
		#con.list_dbs.each do |db|
		#	puts db
		#end

		# Creating and populating a table
		# con is short for connection
		# mydb resides somewhere else, indepedent with this code
		# localhost identifies its location, time04 is the username
		# 1234 is the password, mydb is database name
		con = Mysql.new('localhost', 'tim04', '1234', 'mydb')
		puts Mysql.instance_methods
		con.query("CREATE TABLE IF NOT EXISTS Writers(ID \
			 INT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(25))")
		con.query("INSERT INTO Writers(NAME) VALUES('Jack London')")
		con.query("INSERT INTO Writers(NAME) VALUES('Xiaoting Ye')")
		con.query("INSERT INTO Writers(NAME) VALUES('Shanshan Wang')")





	rescue Mysql::Error => e
		puts e.errno
		puts e.error
	ensure
		con.close if con
	end
end
