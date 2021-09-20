class Game 
  
  def initialize
    puts 'Please enter your name'
    name1 =  gets.chomp 
    @player1 = Player.new(name1)
    puts 'Please enter your name'
    name2 =  gets.chomp 
    @player2 = Player.new(name2)
    player_questions
  end
  def turns 
    if @current_user  == @player1
      @current_user = @player2
      @winner =  @player1
    else
      @current_user = @player1
      @winner = @player2
    end
  end
  def player_questions
    turns
    Questions.new(@current_user)
    
    if @current_user.life == 0
      puts "game over"
      puts "winner is #{@winner.name} won with a score of #{@winner.life}/3 "
    else
      puts 'next question'
      player_questions
    end
  end

end