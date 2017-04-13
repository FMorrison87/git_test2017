class Dragon

def initialize name
	@name = name
	@asleep = false
	@stuffInBelly = 10
	@stuffInIntestines = 0

	puts @name + ' is born!'
end

def feed
	puts 'You fed ' + @name + '.'
	@stuffInBelly = 10
	passageOfTime
end

def walk
	puts 'You walked ' + @name + '.'
	@stuffInIntestines = 0
	passageOfTime
end

def putToBed
	puts 'You put ' + @name + ' to bed.'
	@asleep = true
	3.times do
		if @asleep
			passageOfTime
		end
		if @asleep
			puts @name + ' snores, filling the room with smoke.'
		end
	end
	if @asleep
		@asleep = false
		puts @name + ' woke up!'
	end
end

def toss
	puts 'You toss ' + @name + ' up into the air.'
	puts 'He giggles, which singes your eyebrows.'
	passageOfTime
end

def rock
	puts 'You rock ' + @name + ' gently.'
	@asleep = true
	puts 'He briefly dozes off...'
	passageOfTime
	if @asleep
		@asleep = false
		puts 'He wakes when you stop.'
	end
end

private

def hungry?
	@stuffInBelly <= 2
end

def poopy?
	@stuffInIntestines >= 8
end

def passageOfTime
	if @stuffInBelly > 0
		@stuffInBelly = @stuffInBelly - 1
		@stuffInIntestines = @stuffInIntestines +1
	else #super hungry dragon!
		if @asleep
			@asleep = false
			puts 'He wakes up suddenly!'
		end
		puts @name + ' is starving! In desperation he ATE you!'
		@youAlive = false
		exit
	end

	if @stuffInIntestines >= 10
	@stuffInIntestines = 0
	puts 'Whoops! ' + @name + ' had an accident...'
	end

	if hungry?
		if @asleep
		asleep = false
		puts 'He wakes up suddenly!'
		end
	puts @name + '\'s stomach grumbles...'
	end

	if poopy?
		if @asleep
		@asleep = false
		puts 'He wakes up suddnely!'
		end
	puts @name + ' does the potty dance...'
	end
end
end

puts 'What is the name of your new baby dragon?'

name = gets.chomp

pet = Dragon.new name

reply = ''

while reply != 'stahp'
	puts 'What are we doing with our dragon now?'
	reply = gets.chomp.downcase.to_s
	if reply == 'feed'
		pet.feed
	elsif reply == 'toss'
		pet.toss
	elsif reply == 'rock'
		pet.rock
	elsif reply == 'walk'
		pet.walk
	elsif reply == 'sleep'
		pet.putToBed
	elsif reply == 'stahp'
		exit
	else puts 'That is not a command, choose another.'
	end
end
