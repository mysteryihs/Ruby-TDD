def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, number = 1)
	myArray = []
	if number == 1
		myString = string + " " + string
		return myString
	else
		number.times do
		myArray << string
		end
		return myArray.join(" ")
	end
end

def start_of_word(string, index)
	if index == 1
		return string[index - 1]
	else
		string[0..index - 1]
	end
end

def first_word(string)
	myArray = string.split(" ")
	return myArray[0]
end

def titleize(string)
	array1 = []
	array2 = string.split(" ")
	array2[0] = array2[0].capitalize
	array2.each do |i|
		if i == "and"
			array1 << i
		elsif i == "the"
			array1 << i
		elsif i == "over"
			array1 << i
		else
			array1 << i.capitalize
		end
	end
	return array1.join(" ")
end