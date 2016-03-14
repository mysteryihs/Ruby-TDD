def translate(string)
	yourString = string.split(" ")
	myString = []
	yourString.each do |i|
		myString << translates(i)
	end
	return myString.join(" ")
end

def translates(string)
	vowels = ["a", "e", "i", "o", "u"]
	split_string = string.split("")
	if split_string[0] == "q" and split_string[1] == "u"
			hold = split_string.shift
			split_string << hold
			hold = split_string.shift
			split_string << hold
			return split_string.join + "ay"
	end
	vowels.each do |i|
		if split_string[0] == i
			return string + "ay"
		end
	end
	vowels.each do |i|
		if split_string[1] == i
			hold = split_string.shift
			split_string << hold
			return split_string.join + "ay"
		end
	end
	vowels.each do |i|
		if split_string[2] == i
			if split_string[1] == "q" and split_string[2] == "u"
				hold = split_string.shift
				split_string << hold
				hold = split_string.shift
				split_string << hold
				hold = split_string.shift
				split_string << hold
				return split_string.join + "ay"
			end
			hold = split_string.shift
			split_string << hold
			hold = split_string.shift
			split_string << hold
			return split_string.join + "ay"
		end
	end
	vowels.each do |i|
		if split_string[3] == i
			hold = split_string.shift
			split_string << hold
			hold = split_string.shift
			split_string << hold
			hold = split_string.shift
			split_string << hold
			return split_string.join + "ay"
		end
	end
end