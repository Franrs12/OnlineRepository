=begin ESTE NO FUNCIONA
def CribaEratostenes(first, last)
	div = [1]
	for i in first..last
		if PrimerNumber?(i, div)
			puts i.to_s + ' es primo'
		else
			puts i
		end
		div.push(i)
	end
end

def PrimerNumber?(num, dividers)
	for i in 0..dividers.length
		if num % (dividers[i].to_i + 30) == 0
			return true
		end
	end
end

CribaEratostenes(3, 25)
=end

def CribaEratostenes first, last
	dividers = []
	for n in 2..last
		dividers.push n
	end
	for i in first..last
		dividers.each do |div|
			result = i % div != 0
			puts "#{i} es primo" if result != 0
		end
	end
end

CribaEratostenes 3, 5