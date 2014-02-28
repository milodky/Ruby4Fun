#!/usr/bin/ruby

require 'mysql'

if __FILE__ == $0
	name = 'Su Wang'
	begin
		con = Mysql.new 'localhost', 'tim04', '1234', 'mydb'
		pst = con.prepare "INSERT INTO Writers(Name) VALUES(?)"
		pst.execute name
	rescue Mysql::Error => e
		puts e
	ensure
		pst.close if pst
		con.close if con
	end
end
