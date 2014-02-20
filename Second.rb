if __FILE__ == $0
	for i in (0..10).step(2)
		puts i
	end
	require 'awesome_gem'
	AwesomeGem::WhoIs.awesome?
end
