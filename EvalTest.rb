#!/usr/bin/env ruby

if __FILE__ == $0
	code = "Time.now"
	result = eval(code)
	sleep(2)
	puts Time.now
	puts result
	puts code
end
