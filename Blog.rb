#Define una clase
class Post
	#constructor method
	def initialize(t,d,p)
		@title, @date, @text = t, d, p
	end
	
	#accesor methods
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

#Define un método
#def Blog
#	Post.each {|post| puts "#{post.title}#{post.date}" + puts "******" + puts "#{post.text}" + "--------"}
#end


#Crea el método del blog
def Blog
	#Crea un objeto
	miPrimerPost = Post.new("Mi Primer Post", "11-4-2015", "Este es el texto de mi primer post.")
	miSegundoPost = Post.new("Mi Segundo Post", "11-4-2015 por la tarde", "Este es otro texto.")

	#Usa accesor methods
	x = miPrimerPost.imprimeTitulo()
	y = miPrimerPost.imprimeFecha()
	z = miPrimerPost.imprimeTexto()
	x2 = miSegundoPost.imprimeTitulo()
	y2 = miSegundoPost.imprimeFecha()
	z2 = miSegundoPost.imprimeTexto()

	puts "#{x} #{y}"
	puts "********"
	puts "#{z}"
	puts "--------"
	puts "#{x2} #{y2}"
	puts "********"
	puts "#{z2}"
	puts "--------"
end

Blog()
