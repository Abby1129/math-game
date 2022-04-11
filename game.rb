class Game
  def start(players)
  puts "----- NEW TURN -----"
  question = Question.new # is called from question.rb
  puts "#{players[0].name}: #{question.qs}"
  print "> "
  answer = question.p_answer

    if answer == question.q_answer
    # players[0].score += 1
    puts "#{players[0].name}: YES! You're correct." # players[0] is the first player in the players array from main.rb  
    else
    players[0].lose_life
    puts "#{players[0].name}: Seriously? No!"
    end

  
    if players[0].lives == 0 # if the first player's lives are 0, then the game is over
    puts "ITS OVER"
    puts "#{players[1].name} wins  with a score of #{players[1].lives}/3 \n----- GAME OVER -----\nGood Bye"
    else
    players.reverse! # reverse! is a method that reverses the order of the elements in an array in place. The first array element becomes the last, and the last array element becomes the first. 
    puts "#{players[1].name}: #{players[1].lives}/3 vs #{players[0].name}: #{players[0].lives}/3"
      start(players) # start(players) is a method that calls itself to start the game again with the other player as the current player if the current player has lives left
    end
 
  end

end
