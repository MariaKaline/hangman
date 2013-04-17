def play_game
  answer=""
  guesses=0

  
  while answer != "secret" and guesses < 5
    puts "guess a word"
    answer = gets.strip 
    guesses = guesses + 1
  end

  if answer == "secret" then
    puts "You Won!"
  else
    puts "Game Over!"
  end
end

def take_input
  gets.strip
end

puts "Hi, what's your name?"
name = take_input
puts "Hello #{name}!"

puts "How old are you?"
age = take_input.to_i

if age < 16 then
  puts "You're too young to play. Sorry."
elsif age >= 60 then
  puts "Sorry, you're too old to play."
else
  puts "You're old enough. Have fun playing."
  play_game
end