class Car
	attr_accessor :noise

	IO.write('cars.txt', 0)
	
	def initialize noise, color='rojo'
		@noise = noise
		@color = color
		counter = IO.read('cars.txt').to_i
		counter += 1
		IO.write('cars.txt', counter)
	end
	
	def show_color
		puts @color
	end

	def make_noise
		puts @noise
	end
	def show_total_cars #Este enseña el valor pero se le olvida.
		
	end
	def get_total_cars #Este sí se queda con el valor, se podría operar con él.
		
	end
	def self.show_total_cars #Para esta no hace falta crear un coche y preguntarlo. Se pregunta a la clase.
		puts IO.read('cars.txt')
	end
end

class Racing_car < Car
	def initialize color
		@color = color
		@noise = 'BROOOM'
		counter = IO.read('cars.txt').to_i
		counter += 1
		IO.write('cars.txt', counter)
	end
end

primer_coche = Car.new 'Brooom', 'azul'
primer_coche.show_total_cars
Car.show_total_cars
coche_ruidoso = Car.new 'BRRRROOOOOOOOOOOM' #color = 'rojo' por defecto
coche_electrico = Car.new 'Ssssss', 'verde'

primer_coche.make_noise
primer_coche.show_total_cars
coche_ruidoso.make_noise
coche_electrico.make_noise
coche_electrico.show_total_cars

#puts coche_electrico.show_total_cars == nil		# => true
#puts coche_electrico.get_total_cars * 20 == 60		# => true

Car.show_total_cars


#--------------HERENCIA-----------------
coche_deportivo = Racing_car.new 'negro'
coche_deportivo.make_noise
coche_deportivo.show_color

Car.show_total_cars


#-----------------EACH------------------
all_cars = [primer_coche, coche_ruidoso, coche_electrico, coche_deportivo]

all_cars.each do |car|
	car.make_noise
end


#-----------------MAP-------------------
sounds = ['Broom', 'Meek', 'Nyan']
new_cars = sounds.map do |sound|
	Car.new sound
end

new_cars.each do |car|  #Esto es para comprobar que los ha creado.
	car.make_noise
end


#---------------REDUCE------------------
reduced_sounds = all_cars.reduce('') do |str, car|
	str + car.noise
end

puts reduced_sounds