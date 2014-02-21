#!/usr/bin/ruby

def sequence1(n, m, c, &b)
	i = 0
	while (i < n)
		b.call(i * m + c)
		i += 1
	end
end

def sequence2(n, m, c)
	i = 0
	while (i < n)
		yield (i * m + c)
		i += 1
	end
end

def sequence3(n, m, c, b)
	i = 0
	while (i < n)
		b.call(i * m + c)
		i += 1
	end
end

if __FILE__ == $0
	puts $0
	puts $1
	p = Proc.new {|x| puts x}
	puts "No1"
	sequence1(5, 2, 2) {|i| puts i}
	puts "No2"
	sequence2(5, 2, 2) {|i| puts i}
	puts "No3"
	sequence3(5, 2, 2, p) {|i| puts i}
	puts "No4"
	sequence3(5, 2, 2, p)
end
