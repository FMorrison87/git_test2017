def ceaser_cipher(string, number)
	answer =  string.gsub(/./) do |i|
		(i.ord + number).chr
	end
	answer = answer.gsub('%', ' ')
	puts answer
end


ceaser_cipher("This is a simple string", 5)