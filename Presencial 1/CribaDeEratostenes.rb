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
	for i in first..last
		n = (1..i)
		if i % n != 0
			puts 'primo'
		else
			puts i
		end
	end
end

CribaEratostenes 3, 8