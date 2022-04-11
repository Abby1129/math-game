require './players'
require './questions'
require './game'

puts "This is main.rb"

# Creates instances of the Player class and stores them in an array
players = [Player.new("Player 1"), Player.new("Player 2")]

# Creates an instance of the Game class and calls the start method passing in the players array as an argument   
game = Game.new
game.start(players) 