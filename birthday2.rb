def birthday
	puts "What year were you born?"
	year = gets.chomp.to_i

	puts "What month were you born?"
	month = gets.chomp.to_i

	puts "What day were you born?"
	day = gets.chomp.to_i

	yearborn =  Time.mktime(year, month, day)
	todayDate = Time.new

	while yearborn < todayDate
		puts "SPANK"
		yearborn = yearborn + (60*60*24*7*52)
	end


end

birthday