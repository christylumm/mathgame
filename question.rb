# # QUESTION
# need to keep track of: 
# - answers
# - number 1, number 2
# - question to display

class Question 
  attr_accessor :answer, :display

  def initialize()
    @number1 = rand(1...50)
    @number2 = rand(1...50)
    @answer = @number1 + @number2
    @display = "What does #{@number1} plus #{@number2} equal?"
  end
end
