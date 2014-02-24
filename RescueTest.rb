def sb
	puts "TMD SB"
	sleep(2)
	raise 'NTMD SB'
end





if __FILE__ == $0
	a = ['abc', 'bcd', "sb", 'cde']
	1000.times do |i|
		if (a[i] == "sb")
			begin
				eval(a[i])
			rescue
				puts "2B"
			end
		end
		line = (a[i] == 'sb' ? eval(a[i]) : a[i]) rescue 'SB21'
		puts line
		
		break unless line
	end
end
