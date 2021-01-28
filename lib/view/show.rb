require_relative '../app/board'

  #class Show
    #attr_accessor :table
table = Board.new



def show_board(table)
  puts " " * 5 + "1" + " " * 3 + "2" + " " * 3 + "3"                              
  puts "-" *16
  puts " A | #{table.arr_boardcase[0].token} | #{table.arr_boardcase[1].token} | #{table.arr_boardcase[2].token} |"
  puts "-" *16
  puts " B | #{table.arr_boardcase[3].token} | #{table.arr_boardcase[4].token} | #{table.arr_boardcase[5].token} |"
  puts "-" *16
  puts " C | #{table.arr_boardcase[6].token} | #{table.arr_boardcase[7].token} | #{table.arr_boardcase[8].token} |"
end

show_board(table)
