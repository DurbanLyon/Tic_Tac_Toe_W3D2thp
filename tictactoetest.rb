#classes: GAME, BOARD, CASE, PLAYER 





class Game
require "pry"
	
	def initialize()
		board = Board.new
		p1 = Player.new
		p2 = Player.new
	end 

	def set_name()
		puts "Player 1 name:"
		print ">"
		name = gets.chomp
		p1.set_name_to(name)

		puts "Player 2 name:"
		print ">"
		name = gets.chomp
		p2.set_name_to(name)
	end

	def random_first()
		if rand(2) == 0
			first_player = 0
		else 
			first_player = 1
		end
	end

	def round
	board.which_case()
	end
binding pry


end

class Board

	# initialization 9 cases
	def initialize
		case1 = Board_case.new
		case2 = Board_case.new
		case3 = Board_case.new
		case4 = Board_case.new
		case5 = Board_case.new
		case6 = Board_case.new
		case7 = Board_case.new
		case8 = Board_case.new
		case9 = Board_case.new
	end
		

	# Which symbol in function of player
	def which_symbol
		who_is_playing = first_player
		if who_is_playing == 0
			symbol = "X"
		else who_is_playing == 1
			symbol = "O"
		end
	end

	# input choice of the user for location case
	def which_case
		which_case_to_fill = gets.chomp.to_i
	end
	
	# fill the case in function of the input choice and symbol player
	def fill_the_case(symbol, which_case_to_fill)
	
		case which_case_to_fill
		when 1
			case1.set_symbol_to(symbol)
		when 2
			case1.set_symbol_to(symbol)
		when 3
			case1.set_symbol_to(symbol)
		when 4
			case1.set_symbol_to(symbol)
		when 5
			case1.set_symbol_to(symbol)
		when 6
			case1.set_symbol_to(symbol)
		when 7
			case1.set_symbol_to(symbol)
		when 8
			case1.set_symbol_to(symbol)
		when 9
			case1.set_symbol_to(symbol)
		else
			puts "Thanks to give a value between 1 to 9"
		end
	end



class Board_case
	def initialize()
		@symbol = ""
	end

	def set_symbol_to(symbol)
		@symbol = symbol 
	end
end

class Player

	def initialize()
		@name = ""
	end

	def set_name_to(name)
		@name = name
	end 

	def result_game(win_or_loose)
		@win_or_loose = win_or_loose
	end
end
end

