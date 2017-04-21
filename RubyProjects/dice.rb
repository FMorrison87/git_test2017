class Dice

def initialize
	roll
end

def roll
	@currentNumber = 1 + rand(6)
end

def showing
	@currentNumber
end

def cheat(number)
	@currentNumber = number
end

end

puts Dice.new.showing