if __FILE__ == $0
	(0).upto(3) do |i|
		puts "I'm gonna sleep #{i + 1} seconds"
		i += 1
		sleep(i)
	end
end
