require 'pry'

class Counter
	attr_accessor :counter

	def initialize
		@counter = Hash.new 0
	end

	def add_element element
		@counter[element] += 1
	end
end

bottles_counter = Counter.new
bottles_counter.add_element 'Bezoya'
bottles_counter.add_element 'Aquarel'
bottles_counter.add_element 'Bezoya'
bottles_counter.add_element 'Bezoya'
bottles_counter.add_element 'Solares'
bottles_counter.add_element 'Solares'
bottles_counter.add_element 'Bezoya'
bottles_counter.add_element 'Solares'

puts bottles_counter.counter


binding.pry
#Esto detiene la ejecución del programa, se continúa con ctrl + d.

food_counter = Counter.new
food_counter.add_element 'orange'
food_counter.add_element 'orange'
food_counter.add_element 'banana'
food_counter.add_element 'orange'
food_counter.add_element 'melon'
food_counter.add_element 'melon'

puts food_counter.counter