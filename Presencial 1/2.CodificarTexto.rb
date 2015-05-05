def isNumber?(val)
	val.to_i.to_s == val
end

def isSymbol?(val)
	val.downcase == val.upcase
end

def NumberEncoding(str)
	str = str.downcase
	alfabeto = ('a'..'z').to_a
	code = ''
	for i in 0..str.length-1
		if (isNumber?(str[i]) || isSymbol?(str[i]))
			code += str[i]
		else (isNumber?(str[i]) == false && str[i] != ' ')
			code += (alfabeto.index(str[i]).to_i + 1).to_s
		end
	end
	return code
end

#NumberEncoding('98989')
#NumberEncoding('JAJ-a')
#NumberEncoding('hello 45')

print NumberEncoding('hello 45') == '85121215 45'
print NumberEncoding('jaj-a') == '10110-1'