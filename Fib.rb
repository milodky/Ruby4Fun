#!/usr/bin/ruby

def Fib(n)
	0 if n < 1
	1 if n == 1
	last = 1
	current = 1
	mynext = 2
	for i in 1..n
		mynext = last + current
		last = current
		current = mynext
	end
	return mynext
end

if __FILE__ == $0
	1.upto(10) { |i| puts Fib(i)}
end
		
