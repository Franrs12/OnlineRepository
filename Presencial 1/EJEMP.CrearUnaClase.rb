class Car
	def initialize noise
		@noise = noise
		counter = IO.read('cars.txt').to_i
		counter += 1
		IO.write('cars.txt', counter)
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

primer_coche = Car.new 'Brooom'
primer_coche.show_total_cars
coche_ruidoso = Car.new 'BRRRROOOOOOOOOOOM'
coche_electrico = Car.new 'Ssssss'

primer_coche.make_noise
primer_coche.show_total_cars
coche_ruidoso.make_noise
coche_electrico.make_noise
coche_electrico.show_total_cars

#puts coche_electrico.show_total_cars == nil		# => true
#puts coche_electrico.get_total_cars * 20 == 60	# => true

Car.show_total_cars