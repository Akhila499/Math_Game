class Questions
  def initialize(player)
    @num1 = rand(0 .. 20)
    @num2 = rand(20 .. 46)
    puts "#{player.name}: what does the #{@num1} plus #{@num2} equals ?"
    answer = gets.chomp.to_i
    correct_ans = @num1 + @num2
    if answer == correct_ans
      puts "#{player.name}: Yes you are right!"
      puts "#{player.name}: #{player.life}/3"
    else
      puts "#{player.name}: No you are wrong"
      player.life = player.life - 1
      puts "#{player.name}: #{player.life}/3 "
    end

  end
end