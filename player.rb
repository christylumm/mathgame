# # PLAYER
# need to keep track of: 
# - number of lives
# - player name
#
# methods: 
# - check if alive (lives > 0)

class Players
  attr_accessor :lives, :name

  def initialize(name, lives = 3)
    @lives = lives
    @name = name
  end

  # checks if player is alive
  def alive?
    @lives > 0
  end
end