def twice
	yield
	yield
end
if __FILE__ == $0
	twice
end
