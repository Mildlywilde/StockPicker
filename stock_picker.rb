def stock_picker(array)
	best_price = 0
	best_days = [0,1]
	array.each_with_index do |buy, bday|
		(bday..array.length).each_with_index do |sday|
			sell = array[sday]
			if(sell.to_i - buy.to_i) > best_price
				best_price = sell.to_i - buy.to_i
				best_days = [bday, sday]
			end
		end
	end
	puts "buy on #{best_days[0]} and sell on #{best_days[1]} for a profit of #{best_price}"
end

puts "insert a list of prices seperated by commas"
input = gets.chomp.split(",")

stock_picker(input)
