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


if manzanas <= 1
	manzanas = manzanas
elsif manzanas % 2 == 0
	manzanas = manzanas / 2
else manzanas % 2 == 1
	manzanas = (manzanas - 1) / 2 + 1
end

coste = manzanas * 10 + naranjas * 5 + uvas * 15 + bananas * 20 + melones * 50
puts "El coste es #{coste}"
