class WorldGreeter
	def greet(a, b)
		puts "#{greeting(a)} #{who(b)}"
	end

	def greeting(a)
		a.to_s
		#"Hello"
	end

	def who(b)
		b.to_s
		#"World"
	end
end

if __FILE__ == $0
	p = WorldGreeter.new
	p.greet(123, 456)
end
