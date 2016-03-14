class Book
	def title=(string)
		conjunctions = ['for', 'and', 'nor', 'but', 'or', 'yet', 'so']
		prepositions = ['in', 'the', 'of']
		articles = ['a', 'an']
		is_con = false
		is_prep = false
		is_art = false
		myString = []
		yourString = string.split(" ")
		yourString.each do |i|
			conjunctions.each do |n|
				if n == i
					is_con = true
				end
			end
			prepositions.each do |n|
				if n == i
					is_prep = true
				end
			end
			articles.each do |n|
				if n == i
					is_art = true
				end
			end
			if is_con == true
				myString << i
				is_con = false
			elsif is_prep == true
				myString << i
				is_prep = false
			elsif is_art == true
				myString << i
				is_art = false
			else
				myString << i.capitalize
			end
		end
		myString[0] = myString[0].capitalize
		@title = myString.join(" ")
	end
	def title
		@title
	end
end