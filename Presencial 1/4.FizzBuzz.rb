=begin TODO ESTO SE PUEDE HACER EN UNA LÍNEA
def multipleOfThree?(num, )
	num % 3 == 0
end

def multipleOfFive?(num)
	num % 5 == 0
end

def multipleOfThreeAndFive?(num)
	num % 15 == 0
end

def Game(firstNum, lastNum)
	for i in firstNum..lastNum
		if  multipleOfThreeAndFive?(i)
			puts 'FizzBuzz'
		elsif multipleOfThree?(i)
			puts 'Fizz'
		elsif multipleOfFive?(i)
			puts 'Buzz'
		else
			puts i
		end
	end
end

Game(50, 320)
=end

=begin AHORA QUEDA METER LAS REGLAS
def multipleOfX?(num, x)
	if num % x == 0
		return true
	end
end

def Game(firstNum, lastNum)
	for i in firstNum..lastNum
		if  multipleOfX?(i, 15)
			puts 'FizzBuzz'
		elsif multipleOfX?(i, 3)
			puts 'Fizz'
		elsif multipleOfX?(i, 5)
			puts 'Buzz'
		else
			puts i
		end
	end
end

Game(2, 150)
=end

def multipleOfX? num, x
	if num % x == 0
		return true
	end
end

def Game firstNum, lastNum, rules
	for i in firstNum..lastNum
		if  multipleOfX?(i, 15)
			puts 'FizzBuzz'
		elsif multipleOfX?(i, 3)
			puts 'Fizz'
		elsif multipleOfX?(i, 5)
			puts 'Buzz'
		else
			puts i
		end
	end
end

Game(2, 150, {3 => 'Fizz', 5 => 'Buzz', 15 => 'FizzBuzz', 24 => 'Olé Paquito'})