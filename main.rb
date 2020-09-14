require './player'
require './question'

class Game
  puts "Welcome to Tw0-0 - The Math Game. This game requires two players."
  puts "Enter Player 1's name: "
  player1 = gets.chomp
  puts "Enter Player 2's name: "
  player2 = gets.chomp

  player1 = Players.new(player1)
  player2 = Players.new(player2)

  count = 0

  # loop through turns while the players are still alive
  while (player1.alive? && player2.alive?) do
    player = (count == 0) ? player1 : player2
    puts '-------- NEW TURN --------'

    #generate new question
    question = Question.new 
    puts "#{player.name}: #{question.display}"
    print "> "

    #player enters answer
    answer = gets.chomp
    if (answer.to_i) == question.answer
      puts "YES! You are correct."
      puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
    else
      player.lives -= 1
      puts "Seriously? No!"
      puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
    end
    count = (count + 1) % 2
  end

  # end the game
  if (player1.lives == 0) 
    puts "#{player2.name} wins with a score of #{player2.lives}/3"
    puts '-------- GAME OVER --------'
    puts "Good bye!"
  else 
    puts "#{player1.name} wins with a score of #{player1.lives}/3"
    puts '-------- GAME OVER --------'
    puts "Good bye!"
  end
end