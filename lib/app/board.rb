require_relative 'board_case'
require_relative 'player'

class Board
  attr_accessor :arr_boardcase

  def initialize
    @arr_boardcase = []
    @arr_boardcase << BoardCase.new("A1")
    @arr_boardcase << BoardCase.new("A2")
    @arr_boardcase << BoardCase.new("A3")
    @arr_boardcase << BoardCase.new("B1")
    @arr_boardcase << BoardCase.new("B2")
    @arr_boardcase << BoardCase.new("B3")
    @arr_boardcase << BoardCase.new("C1")
    @arr_boardcase << BoardCase.new("C2")
    @arr_boardcase << BoardCase.new("C3")
  end
  
  def play_turn
    game_on = true
    while game_on
      puts "#{Player.name} what position would you like ?"
      answer = gets.chomp.upcase
      case answer
      when ("A1")
        if self.arr_boardcase[0].token == "."
          self.arr_boardcase[0].token = Player.token
          game_on = false
        else
          puts "You fucked, try again !"
        end
      when ("A2")
        if self.arr_boardcase[1].token == "."
          self.arr_boardcase[1].token = Player.token
          game_on = false
        else
          puts "You fucked, try again !"
        end
      when ("A3")
        if self.arr_boardcase[2].token == "."
          self.arr_boardcase[2].token = Player.token
          game_on = false
        else
          puts "You fucked, try again !"
        end
      when ("B1")
        if self.arr_boardcase[3].token == "."
            self.arr_boardcase[3].token = Player.token
            game_on = false
        else
            puts "You fucked, try again !"
        end
      when ("B2")
        if self.arr_boardcase[4].token == "."
            self.arr_boardcase[4].token = Player.token
            game_on = false
        else
            puts "You fucked, try again !"
        end
      when ("B3")
        if self.arr_boardcase[5].token == "."
            self.arr_boardcase[5].token = Player.token
            game_on = false
        else
            puts "You fucked, try again !"
        end
      when ("C1")
        if self.arr_boardcase[6].token == "."
            self.arr_boardcase[6].token = Player.token
            game_on = false
        else
            puts "You fucked, try again !"
        end
      when ("C2")
        if self.arr_boardcase[7].token == "."
            self.arr_boardcase[7].token = Player.token
            game_on = false
        else
            puts "You fucked, try again !"
        end
      when ("C3")
        if self.arr_boardcase[8].token == "."
            self.arr_boardcase[8].token = Player.token
            game_on = false
        else
            puts "You fucked, try again !"
        end
      else
      puts "WRONG SPOT"
      end
    end
    
  end
  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    # la victoire y est quand
    ## 1- case 1/ case 2 / case 3 similaires
    ## 2- case 4/ case 5/ case 6  similaires
    ## 3- case 7/ case 8/ case 9  similaires
    ## 4- case 1/ case 4/ case 7  similaires
    ## 5- case 2/ case 5/ case 8  similaires
    ## 6- case 3/ case 6/ case 9  similaires
    ## 7- case 1/ case 5/ case 9  similaires
    ## 8- case 3/ case 5/ case 7  similaires
    ## 9- pas de similitudes ==> égalité

    if self.arr_boardcase[0].token = x && self.arr_boardcase[1].token = x && self.arr_boardcase[2].token = x
      puts "Tu as gagné"
    elsif self.arr_boardcase[0].token = x && self.arr_boardcase[3].token = x && self.arr_boardcase[6].token = x
      puts "Tu as gagné"
    elsif self.arr_boardcase[0].token = x && self.arr_boardcase[4].token = x && self.arr_boardcase[8].token = x
      puts "Tu as gagné"
    elsif self.arr_boardcase[3].token = x && self.arr_boardcase[4].token = x && self.arr_boardcase[5].token = x
      puts "Tu as gagné"
    elsif self.arr_boardcase[6].token = x && self.arr_boardcase[7].token = x && self.arr_boardcase[8].token = x
      puts "Tu as gagné"
    elsif self.arr_boardcase[1].token = x && self.arr_boardcase[4].token = x && self.arr_boardcase[7].token = x
      puts "Tu as gagné"
    elsif self.arr_boardcase[2].token = x && self.arr_boardcase[5].token = x && self.arr_boardcase[8].token = x
      puts "Tu as gagné"
    elsif self.arr_boardcase[2].token = x && self.arr_boardcase[4].token = x && self.arr_boardcase[6].token = x
      puts "Tu as gagné"

    #------------------- CAS DE VICTOIRE TOKEN "O"---------------------------------------------------------------

    elsif self.arr_boardcase[0].token = o && self.arr_boardcase[1].token = o && self.arr_boardcase[2].token = o
      puts "Tu as gagné"
    elsif self.arr_boardcase[0].token = o && self.arr_boardcase[3].token = o && self.arr_boardcase[6].token = o
      puts "Tu as gagné"
    elsif self.arr_boardcase[0].token = o && self.arr_boardcase[4].token = o && self.arr_boardcase[8].token = o
      puts "Tu as gagné"
    elsif self.arr_boardcase[3].token = o && self.arr_boardcase[4].token = o && self.arr_boardcase[5].token = o
      puts "Tu as gagné"
    elsif self.arr_boardcase[6].token = o && self.arr_boardcase[7].token = o && self.arr_boardcase[8].token = o
      puts "Tu as gagné"
    elsif self.arr_boardcase[1].token = o && self.arr_boardcase[4].token = o && self.arr_boardcase[7].token = o
      puts "Tu as gagné"
    elsif self.arr_boardcase[2].token = o && self.arr_boardcase[5].token = o && self.arr_boardcase[8].token = o
      puts "Tu as gagné"
    elsif self.arr_boardcase[2].token = o && self.arr_boardcase[4].token = o && self.arr_boardcase[6].token = o
      puts "Tu as gagné"
    else
      puts "ÉGALITÉ"
    end
  end
end
