class OrangeTree

def initialize
	@height = 0
	@oranges = 0
	@age = 0
	@orangeBasket = 0

end

def oneYearPasses
	@age = @age + 1
	@height = @height + 5
	@oranges = 0
	

	if @age >= 100
		puts 'After a long life, the orange tree has died.'
		exit
	elsif @age <= 2
		@oranges = @oranges
	elsif @age >= 3
		@oranges = @oranges + 2
	elsif @age >= 6
		@oranges = @oranges + 4
	elsif @age >= 10
		@oranges = @oranges + 6
	end

end

def orangeCount
	puts @oranges
end

def orangeAge
	puts @age
end

def orangePick
	if @oranges == 0
		puts 'No mas oranges.'
	elsif @oranges > 0
	@oranges = @oranges-1
	@orangeBasket = @orangeBasket + 1
	end
	puts 'Oranges in your basket: ' + @orangeBasket.to_s + '.'
end

end

tree = OrangeTree.new
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.orangeAge
tree.orangeCount
tree.orangePick
tree.orangePick
tree.orangePick
tree.orangePick
tree.orangePick
tree.orangePick