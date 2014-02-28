#!/usr/bin/ruby

require "mysql"

if __FILE__ == $0
	begin
		con = Mysql.new 'localhost', 'tim04', '1234', 'mydb'
		rs =con.query("SELECT * FROM Writers")
		n_rows = rs.num_rows

		puts "There are #{n_rows} rows in the result set."
		n_rows.times do
			#puts rs.fetch_row
			puts rs.fetch_row.join("\s")
		end

		puts "Another method:"
		rs =con.query("SELECT * FROM Writers")
		rs.each do |row|
			puts row.join("\s")
		end

	rescue Mysql::Error => e
		puts e.errno
		puts e.error
	ensure
		con.close if con
	end
end
