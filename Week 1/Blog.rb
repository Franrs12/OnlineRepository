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
#    Post.each {|post| puts "#{post.title}#{post.date}" + puts "******" + puts "#{post.text}" + "--------"}
#end


#Crea el método del blog
def Blog
    #Crea un objeto
    post1 = Post.new("Mi Primer Post", "11-4-2015", "Este es el texto de mi primer post.")
    post2 = Post.new("Mi Segundo Post", "11-4-2015 por la tarde", "Este es otro texto.")
    post3 = Post.new("Tercer post", "12-4-2015", "El texto del tercer post es bastante más largo que el de los otros dos anteriores porque me he enrollado más.")
    
    #Usa accesor methods
   	x1 = post1.imprimeTitulo()
	y1 = post1.imprimeFecha()
	z1 = post1.imprimeTexto()
	x2 = post2.imprimeTitulo()
	y2 = post2.imprimeFecha()
	z2 = post2.imprimeTexto()
	x3 = post3.imprimeTitulo()
	y3 = post3.imprimeFecha()
	z3 = post3.imprimeTexto()

    puts "#{x1} #{y1}"
    puts "********"
    puts "#{z1}"
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

Blog()