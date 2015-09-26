CHOICES = {'p' => 'Paper', 'r' => "Rock", 's' => "Scissors"}

def display_winning_message(winning_choice)
  case winning_choice
  when 'p'
    puts 'Paper wraps rock!'
  when 'r'
    puts 'Rock crushes scissors!'
  when 's'
    puts 'Scissors cut Paper!'
  end
end

puts "Let's play Rock Paper Scissors!"


loop do
  #player chooses
  begin
    puts "Choose one: (R/P/S)"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)
  #computer chooses
  computer_choice = CHOICES.keys.sample

  if player_choice == computer_choice
    puts "It's a tie"
  elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p')
    display_winning_message(player_choice)
    puts "You win"
  else
    display_winning_message(computer_choice)
    puts "Computer won!"
  end
  puts "Do you want to play again? (y/n)"
  break if gets.chomp.downcase != 'y'
end
puts "Thanks for playing!"
