require_relative "FirstModule"
require_relative "SecondModule"

if __FILE__ == $0
	Unified::First.Output
	Unified::Second.Output
end
