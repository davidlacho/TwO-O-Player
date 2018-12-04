# game.rb

class Game
  def initialize
    @player0 = Player.new('Player 1')
    @player1 = Player.new('Player 2')
    @current_player = @player1
  end

  def next_player
    @current_player == @player0 ? @player1 : @player0
  end

  def start
    while @player0.lives > 0 && @player1.lives > 0
      puts '----- NEW TURN ------'
      @current_player = next_player
      new_question = Question.new
      puts "#{@current_player.name}: #{new_question.question}"
      answer = gets.chomp
      if answer != new_question.answer
        @current_player.lives -= 1
        puts "#{@current_player.name}: Seriously? No!"
      else
        puts "#{@current_player.name}: YES! You are correct."
      end
      puts "#{@player0.name}: #{@player0.lives}/3 vs. #{@player1.name}: #{@player1.lives}/3"
    end
    @current_player = next_player
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts '----- GAME OVER ------'
    puts 'Good bye!'
  end
end
