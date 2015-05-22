require 'pry'
require 'imdb'
require 'ascii_charts'

class Imdb_rating
	attr_accessor :array_movies_histogram, :list_movies

	def initialize
		@array_movies_histogram = []
		search_movie
		create_array
	end	
	def show_array_movies_to_histogram
		@array_movies_histogram		
		puts @array_movies_histogram
	end
	def search_movie
		movies = IO.readlines('movies.txt')
			m = movies.each do |movie|
			i = Imdb::Search.new movie
			@n = i.movies[1]
			show_title
			show_rating
		end
	end
	def show_title
		puts @n.title
	end
	def show_rating
		puts @n.rating
	end
	def create_array
		movies = IO.readlines('movies.txt')
		p = 0
		movies.each do |movie|
			p += 1
			i = Imdb::Search.new movie
			x = i.movies[1].rating.to_i
			#binding.pry
			@array_movies_histogram << [p, x]
		end
		#binding.pry
	end
	def self.show_list_movies
		movies = IO.readlines('movies.txt')
		p = 0
		movies.each do |movie|
			p += 1
			i = Imdb::Search.new movie
			x = i.movies[1].title
			puts "#{p} -> #{x}"
		end
		#binding.pry
	end
end

imdb = Imdb_rating.new

puts AsciiCharts::Cartesian.new(imdb.array_movies_histogram, :bar => true, :hide_zero => true).draw

Imdb_rating.show_list_movies
