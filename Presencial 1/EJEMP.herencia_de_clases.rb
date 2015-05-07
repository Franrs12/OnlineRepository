class Animal
	def initialize name
		@name = name
	end
	def move
		puts 'I move'
	end
	def show_name
		puts @name
	end
	def show_color
		puts @color
	end
end

class Dog < Animal
	def initialize name, color
		super name #El nombre funciona con lo de arriba.
		@color = color
	end
	def move
		puts 'I run everywhere' #Esta es específica de perro.
	end
end

tobi = Dog.new 'Tobi', 'black'
cleo = Animal.new 'Cleo' #No puedo meter color

tobi.show_name
tobi.show_color
tobi.move
cleo.move