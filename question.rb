# question.rb

class Question
  attr_reader :question, :answer
  def initialize
    @num1 = rand(1..9)
    @num2 = rand(1..9)
    @answer = (@num1 + @num2).to_s
    @question = "What does #{@num1} + #{@num2} equal?"
  end
end
