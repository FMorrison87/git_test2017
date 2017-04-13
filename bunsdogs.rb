def confounding
	startbuns = []
	startdogs = []
	spend = 7
	packagedog = 1
	packagebun = 1

	puts "How many dogs are in your package of dogs?"
	
	startdogs = gets.chomp.to_i
	dogs = startdogs

	puts "How many buns are in your package of buns?"

	startbuns = gets.chomp.to_i
	buns = startbuns

	puts "Ok let's get started. You have " + buns.to_s + " hotdog buns, and " + dogs.to_s + " hotdogs."
	puts "You have spent " + spend.to_s + " dollars so far on " + packagebun.to_s  + " package of buns and " + packagedog.to_s + " package of dogs. Let's see how much money it takes you to have an equal number of dogs and buns."
	puts "."
	puts "."
	puts "."
while dogs != buns
		if buns > dogs
			dogs = dogs + startdogs
			spend = spend + 4
			packagedog = packagedog + 1
		end
		if buns < dogs
			buns = buns + startbuns
			spend = spend + 3
			packagebun = packagebun + 1
		end
end
	puts "You have spent " + spend.to_s + " dollars to do this."
	puts "It took " + packagebun.to_s + " packages of buns and " + packagedog.to_s + " packages of dogs for them to be equal."
	puts "You had to buy " + buns.to_s + " total buns and " + dogs.to_s + " toal dogs for them to be equal."
end

confounding