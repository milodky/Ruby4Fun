#!/usr/bin/ruby

require 'mysql'

if __FILE__ == $0
	begin
		con = Mysql.new 'localhost', 'tim04', '1234', 'mydb'
		rs = con.query "SELECT * FROM Writers WHERE Id IN (2, 3)"
		puts "We have #{rs.num_rows} row(s)"
		rs.each_hash do |row|
			puts row
			row.each do |key, value|
				puts key + "_ _" + value
			end
		#	puts row
			#puts row['ID'] + " " + row['Name']
		end
	rescue Mysql::Error => e
		puts e
	ensure
		con.close if con
	end
end
