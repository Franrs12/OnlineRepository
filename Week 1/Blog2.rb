#------------------------------------------------------------------------------------------------------

class Post
    #constructor method
    def initialize(t,d,p)
		@title, @date, @text = t, d, p
	end

    def imprimeTitulo
		@title
	end
	
	def imprimeFecha
		@date
	end
	
	def imprimeTexto
		@text
	end
end

post1 = Post.new("Mi primer post", "11-4-2015", "El primer párafo de este post acaba de terminar aquí.")
post2 = Post.new("Segundo post", "11-4-2015", "Este es el texto del segundo post.")
post3 = Post.new("Tercer post", "12-4-2015", "El texto del tercer post es bastante más largo que el de los 
	otros dos anteriores porque me he enrollado más.")

def convierteLosPosts
x1 = post1.imprimeTitulo()
y1 = post1.imprimeFecha()
z1 = post1.imprimeTexto()
x2 = post2.imprimeTitulo()
y2 = post2.imprimeFecha()
z2 = post2.imprimeTexto()
x3 = post3.imprimeTitulo()
y3 = post3.imprimeFecha()
z3 = post3.imprimeTexto()
end

def imprimeLosPosts
puts "#{x} #{y}"
puts "********"
puts "#{z}"
puts "--------"
puts "#{x2} #{y2}"
puts "********"
puts "#{z2}"
puts "--------"
puts "#{x3} #{y3}"
puts "********"
puts "#{z3}"
puts "--------"
end

imprimeLosPosts()