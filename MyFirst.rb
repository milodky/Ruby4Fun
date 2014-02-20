#!/usr/bin/env ruby

class Greeter
	attr_accessor :names
#	attr_accessor :keys
	@@keys = 10
	# Create the object
	def self.keys
		@@keys
	end
	def self.keys=(key)
		@@keys = key
	end

	def initialize(myinput = "Spokeo")
		@names = myinput
	end

	def say_hi
		@id = 5
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}"
		end
	end
#	private
	def say_bye
		puts @id
	end
end
class XY
	def initialize(name = "None")
		@names = name
	end
	def hello
		puts @names
	end
end
if __FILE__ == $0


	Greeter.keys = "abc"
	puts Greeter.keys
	



	mg = Greeter.new

	puts "mg first"
	mg.say_hi
	x = XY.new
	puts "x first"
	x.hello
	x = mg
	puts "x changed"
	x.say_hi
	x.say_bye


	mg.names = "XX"
	mg.say_hi
	mm = Greeter.new("XIaoting")
	mm.say_hi
end
