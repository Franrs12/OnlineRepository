puts "Estación del año:"
estacion = gets.chomp.downcase

puts "Día de la semana:"
dia = gets.chomp.downcase

puts "Manzanas:"
manzanas = gets.to_i

puts "Naranjas:"
naranjas = gets.to_i

puts "Uvas:"
uvas = gets.to_i

puts "Bananas:"
bananas = gets.to_i

puts "Melones:"
melones = gets.to_i


#Descuento de las manzanas: por cada 2, 1 gratis
if manzanas <= 1
	manzanas = manzanas
elsif manzanas % 2 == 0
	manzanas = manzanas / 2
else manzanas % 2 == 1
	manzanas = (manzanas - 1) / 2 + 1
end

#Descuento de las naranjas: por cada 3, 1 gratis
if naranjas < 3
	naranjas = naranjas
elsif naranjas % 3 == 0
	naranjas = naranjas / 3 * 2
elsif naranjas % 3 == 1
	naranjas = (naranjas - 1) / 3 * 2 + 1
else naranjas % 3 == 2
	naranjas = (naranjas - 2) / 3 * 2 + 2
end
	
#El coste primero para que no nos cobre los plátanos que recibimos por la oferta de las uvas
if estacion == "primavera"
	coste = manzanas * 10 + naranjas * 5 + uvas * 15 + bananas * 20 + melones * 50
elsif estacion == "verano"
	coste = manzanas * 10 + naranjas * 2 + uvas * 15 + bananas * 20 + melones * 50
elsif estacion == "otoño"
	coste = manzanas * 15 + naranjas * 5 + uvas * 15 + bananas * 20 + melones * 50
else estacion == "invierno"
	coste = manzanas * 12 + naranjas * 5 + uvas * 15 + bananas * 21 + melones * 50
end

#Ponemos la subida de los melones por ser domingo
if dia == "domingo"
	coste = coste - melones * 50 + melones * 100
end


#Oferta de las uvas: 1 plátano gratis por cada 4 racimos
if uvas > 4
	bananas = bananas + uvas % 4 
end

puts "Usted ha comprado #{manzanas} manzanas, #{naranjas} naranjas, #{uvas} uvas, #{bananas} bananas y #{melones} melones.El coste es #{coste}."
