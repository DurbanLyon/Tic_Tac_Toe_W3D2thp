#classes: GAME, BOARD, CASE, PLAYER

require "pry"

class Game

 	attr_accessor :p1, :p2, :board, :first_player, :who_is_playing, :symbol

	def initialize()
		@board = Board.new
		@p1 = Player.new
		@p2 = Player.new
	end

	def set_name()
		puts "Player 1 name:"
		print ">"
		name = gets.chomp
		@p1.set_name_to(name)

		puts "Player 2 name:"
		print ">"
		name = gets.chomp
		@p2.set_name_to(name)
	end

	def random_first()
		if rand(2) == 0
			@first_player = 'player1'
			puts "#{@p1.name} begins : X"
			puts "#{@p2.name} : O"
		else
			@first_player = 'player2'
			puts "#{@p2.name} begins : X"
			puts "#{@p1.name} : O"
		end
		return @first_player
	end

#	def round()

#		board.which_case()
#	end

end


class Board

	attr_accessor :which_case_to_fill, :case1, :case2, :case3, :case4, :case5, :case6, :case7, :case8, :case9

	# initialization 9 cases
	def initialize()
		@case1 = Board_case.new
		@case2 = Board_case.new
		@case3 = Board_case.new
		@case4 = Board_case.new
		@case5 = Board_case.new
		@case6 = Board_case.new
		@case7 = Board_case.new
		@case8 = Board_case.new
		@case9 = Board_case.new
	end


	def display()
		puts "|#{@case1.symbol}|#{@case2.symbol}|#{@case3.symbol}|"
		puts "|#{@case4.symbol}|#{@case5.symbol}|#{@case6.symbol}|"
		puts "|#{@case7.symbol}|#{@case8.symbol}|#{@case9.symbol}|"
	end

=begin
	# Which symbol in function of player
	def which_symbol()
		who_is_playing = ''
		if @first_player == 'player1'
			@symbol = "X"
		else who_is_playing == 1
			@symbol = "O"
		end
		return @symbol
	end
=end

	# input choice of the user for location case
	def which_case()
    which_case_to_fill = gets.chomp.to_i
	end

	# fill the case in function of the input choice and symbol player
	def fill_the_case(symbol)
    @which_case_to_fill = gets.chomp.to_i
		case @which_case_to_fill
		when 1
			case1.set_symbol_to(symbol)
		when 2
			case2.set_symbol_to(symbol)
    when 3
			case3.set_symbol_to(symbol)
		when 4
			case4.set_symbol_to(symbol)
		when 5
			case5.set_symbol_to(symbol)
		when 6
			case6.set_symbol_to(symbol)
		when 7
			case7.set_symbol_to(symbol)
		when 8
			case8.set_symbol_to(symbol)
		when 9
			case9.set_symbol_to(symbol)
		else
			puts "Thanks to give a value between 1 to 9"
		end
	end



	#check if 3 symbols are align
	def combo()
    if @case1.symbol == @case2.symbol && @case2.symbol == @case3.symbol
      if @case1.symbol == 'X'
        return @p1.result_game("w")
      else
        return @p2.result_game("w")
      end
    end
  end
=begin
    elsif @case4.symbol == @case5.symbol && @case5.symbol == @case6.symbol
      if @case4.symbol == 'X'
        @p1.result_game("w")
      else
        @p2.result_game("w")
      end
    elsif @case7.symbol == @case8.symbol && @case8.symbol == @case9.symbol
      if @case7.symbol == 'X'
        @p1.result_game("w")
      else
        @p2.result_game("w")
      end
    elsif @case1.symbol == @case4.symbol && @case4.symbol == @case7.symbol
      if @case1.symbol == 'X'
        @p1.result_game("w")
      else
        @p2.result_game("w")
      end
    elsif @case2.symbol == @case5.symbol && @case5.symbol == @case8.symbol
      if @case2.symbol == 'X'
        @p1.result_game("w")
      else
        @p2.result_game("w")
      end
    elsif @case3.symbol == @case6.symbol && @case6.symbol == @case9.symbol
      if @case3.symbol == 'X'
        @p1.result_game("w")
      else
        @p2.result_game("w")
      end
    elsif @case1.symbol == @case5.symbol && @case5.symbol == @case9.symbol
      if @case1.symbol == 'X'
        @p1.result_game("w")
      else
        @p2.result_game("w")
      end
    else @case3.symbol == @case5.symbol && @case5.symbol == @case7.symbol
      if @case3.symbol == 'X'
        @p1.result_game("w")
      else
        @p2.result_game("w")
      end
    end
=end
end

class Board_case

	attr_accessor :symbol

	def initialize()
		@symbol = " "
	end

	def set_symbol_to(symbol)
		@symbol = symbol
	end
end

class Player

	attr_accessor :name

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

def launcher()
	i = 0
	start = Game.new
	start.set_name

	# choice of first player
	start.random_first

	# first round
	symbol = 'X'
	start.board.display
	puts "#{start.first_player}: which case to fill ?"
	#which_case_to_fill = start.board.which_case
	start.board.fill_the_case(symbol)

	# other rounds
	while i < 10
		if symbol == 'X'
			symbol = 'O'
		else
			symbol = 'X'
		end
		start.board.display
		puts "#{start.who_is_playing}: which case to fill ?"
#		which_case_to_fill = start.board.which_case
		which_case_to_fill = start.board.fill_the_case(symbol)
		temp = start.board.combo
		if temp == "w"
			i = 10
		end
		puts "#{start.who_is_playing} filled case: #{which_case_to_fill}"
#		start.board.fill_the_case(symbol, which_case_to_fil)
		i += 1
	end

	binding.pry
end

launcher()
