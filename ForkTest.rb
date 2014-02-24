#!/usr/bin/env ruby

if __FILE__ == $0
	fork {
		puts "hello from Child"
		sleep(5)
		puts"I'm dying..."
	}
	puts "hello from father"
end
