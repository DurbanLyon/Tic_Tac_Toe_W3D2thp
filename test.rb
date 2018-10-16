class Jeu
  attr_accessor :variablejeu
  plat = Plateau.new
end

class Plateau
  attr_accessor :variableplateau
  def initialize()
    variableplateau = 0
  end
end

jeu1 = Jeu.new
