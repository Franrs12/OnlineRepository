class Game
    def initialize character
        @rooms = []
        @character = character
        @inventory = ['a sword', 'a shield']
    end
    def add_room room
        @rooms.push room
    end
    def play
        playing = true
        while playing
            show_room @character.position
            show_exits_room @character.position
            puts 'Chose your next movement or order:'
            print '>'
            order_player = gets.chomp.upcase.to_sym
            current_room = get_room @character.position
            if current_room.paths.keys.include? order_player
            	id = current_room.paths[order_player]
            	@character.position = id
            elsif order_player == :INV
            	puts 'Your inventory is:'
            	object = @inventory.each do |object|
            		puts "#{object}"
            	end
            else
            	puts 'Wrong order. Choose another one:'
            	print '>'
            end
        end
    end
    def get_room id
        room = @rooms.find{|room| id == room.id}
    end
    def show_room id
    	room = @rooms.find{|room| id == room.id}
        puts room.messages
    end
    def show_exits_room id
    	room = @rooms.find{|room| id == room.id}
        room.paths.keys.each do |path|
        	puts path
        end
    end
end

class Character
    attr_accessor :position
    def initialize position
        @position = position
    end
end

class Room
    attr_accessor :id, :paths, :messages
    def initialize id, paths, messages
        @id = id
        @paths = paths
        @messages = messages
    end
end


room1 = Room.new 1, {:N => 2}, 'Esta es la habitación 1.'
room2 = Room.new 2, {:N => 3, :S => 1, :W => 10}, 'Esta es la habitación 2. Hay una espada en el suelo.'
room3 = Room.new 3, {:N => 5, :S => 2, :E => 4, :W => 7}, 'Esta es la habitación 3.'
room4 = Room.new 4, {:W => 3}, 'Esta es la habitación 4.'
room5 = Room.new 5, {:S => 3, :E => 6}, 'Esta es la habitación 5.'
room6 = Room.new 6, {:W => 5}, 'Esta es la habitación 6.'
room7 = Room.new 7, {:E => 3, :W => 8}, 'Esta es la habitación 7.'
room8 = Room.new 8, {:S => 9, :E => 7}, 'Esta es la habitación 8.'
room9 = Room.new 9, {:N => 8, :S => 13, :W => 11}, 'Esta es la habitación 9.'
room10 = Room.new 10, {:E => 2}, 'Esta es la habitación 10.'
room11 = Room.new 11, {:S => 12, :E => 9}, 'Esta es la habitación 11.'
room12 = Room.new 12, {:N => 11}, 'Esta es la habitación 12.'
room13 = Room.new 13, {:N => 9, :E => 14}, 'Esta es la habitación 13.'
room14 = Room.new 14, {:S => 15, :W => 13}, 'Esta es la habitación 14.'
room15 = Room.new 15, {:N => 14}, 'Esta es la habitación 15. Al sur hay una salida hacia el bosque. Has ganado.'

character = Character.new 1

first_game = Game.new character
first_game.add_room room1
first_game.add_room room2
first_game.add_room room3
first_game.add_room room4
first_game.add_room room5
first_game.add_room room6
first_game.add_room room7
first_game.add_room room8
first_game.add_room room9
first_game.add_room room10
first_game.add_room room11
first_game.add_room room12
first_game.add_room room13
first_game.add_room room14
first_game.add_room room15

first_game.play
