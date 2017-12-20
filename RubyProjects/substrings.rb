
# This method takes in a string and list of pre-set words called 'dictionary' and returns every instance of the string in the dictionary in hash.

def substrings(string, dictionary)
	# Creating an empty hash and assigning each key value to 0
	answer = Hash.new 0

	string.downcase

	#Looping through the dictionary array, swapping every word to lowercase and checking using regexp if the string matches anywhere in the word as it's being looped through.
	#If the string matches any part of the word, the word is piped into array j.
	#then j is looped through, and every value in array j is put into the hash answer with j as the value.
	#Since the key values are set to 0 as a default, we are also incrementing the key value by one each time the value appears.
	dictionary.each do |word|
		word.downcase
		if /#{string}/.match(word)
			j = []
			j << word
			j.each do |q|
			answer[q] += 1
			end
		end


		
	end
	#Printing the hash with the substrings found as values and the amount that they appear in the dictionary array as keys.
	puts answer
end


#Testing out the method.
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","low","part","partner","sit"]

string = "part"

substrings(string, dictionary)