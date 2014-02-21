#!/usr/bin/ruby
require "activesupport"
class Constaaa
	cattr_accessor :x
	Pi = 3.14
	@@x = 1
end

if __FILE__ == $0
	puts Constaaa.x
	puts Constaaa::Pi
end
