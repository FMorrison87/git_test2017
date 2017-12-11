puts "Hi there, so you want to get into stocks? Let's get all the stock prices for the coming week, and decide which day is best to buy and which is best to sell."

Weekly_array = []

puts "What is the Sunday stock price?"
Sunday = gets.chomp.to_i


puts "What is the Monday stock price?"
Monday = gets.chomp.to_i


puts "What is the Tuesday stock price?"
Tuesday = gets.chomp.to_i


puts "What is the Wednesday stock price?"
Wednesday = gets.chomp.to_i


puts "What is the Thursday stock price?"
Thursday = gets.chomp.to_i


puts "What is the Friday stock price?"
Friday = gets.chomp.to_i


puts "What is the Saturday stock price?"
Saturday = gets.chomp.to_i


Weekly_array.push(Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday)



array = Array.new

def stock_picker(array)
sum=Array.new

j = 0

while j != array.length

array.drop(j).each do |i|
   sum << -array[j] + i
 end

j = j + 1

end

k = 0

while k != array.length

array.drop(k).each do |i|
  position = -array[k] + i
  if position == sum.max 
    answer = Array.new
    answer << k
    answer << array.index(i)
    
    print answer
  end
end

k = k + 1

end
end

stock_picker(Weekly_array)
