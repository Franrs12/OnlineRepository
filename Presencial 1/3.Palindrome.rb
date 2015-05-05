def isSymbol?(val)
	val.downcase == val.upcase
end

def isSpace?(val)
	val == ' '
end

def cleanTheString(str)
	cleanString = ''
	for i in 0..str.length-1
		if(isSymbol?(str[i]) || isSpace?(str[i]))
			cleanString = cleanString
			#Me ha dicho Raúl que hay una manera mejor de hacer eso. Será con un while.
		else
			cleanString += str[i]
		end
	end
	return cleanString.downcase
end

def PalindromeTwo?(str)
	cleanTheString(str).reverse == cleanTheString(str)
end

print PalindromeTwo?('Anne, I vote more cars race Rome-to-Vienna') == true
print PalindromeTwo?('Noel - sees Leon') == true
print PalindromeTwo?('A war at Tarawa!') == true