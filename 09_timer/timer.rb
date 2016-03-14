class Timer
	def initialize(time = 0)
		@time = time
	end

	def seconds
		@time
	end

	def time_string
		hours = 0
		minutes = 0
		seconds = @time
		minutes += seconds / 60
		hours += minutes / 60
		seconds = seconds % 60
		minutes = minutes % 60
		hours = hours % 60
		hours = sprintf '%02d', hours
		minutes = sprintf '%02d', minutes
		seconds = sprintf '%02d', seconds
		hours.to_s + ":" + minutes.to_s + ":" + seconds.to_s
	end

	def seconds=(time)
		@time = time
		#sprintf '%02d', time
	end
end