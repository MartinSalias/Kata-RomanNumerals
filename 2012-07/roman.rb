class Fixnum

	SYMBOLS = [
	 [1000, "M" ],
	 [ 900, "CM"],
	 [ 500, "D" ],
	 [ 400, "CD"],
	 [ 100, "C" ],
	 [  90, "XC"],
	 [  50, "L" ],
	 [  40, "XL"],
	 [  10, "X" ],
	 [   9, "IX"],
	 [   5, "V" ],
	 [   4, "IV"],
	 [   1, "I" ] ]

	def to_roman()
		
		number = self

		raise "Boom!" if number <= 0 || number > 3999

		symbol = ""

		SYMBOLS.each do |order, letter|
			
			if number >= order
				count, reminder = number.divmod(order)

				symbol << letter * count
				number = reminder
			end
		end

		symbol
	end
end

