require "pry"


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
@p1 = Player.new
@p2 = Player.new



class Board_case

	attr_accessor :symbol

	def initialize()
		@symbol = " "
	end

	def set_symbol_to(symbol)
		@symbol = symbol 
	end
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




set_name 
initialize
display

binding.pry