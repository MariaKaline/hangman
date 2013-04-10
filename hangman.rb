require_relative './hangman_library'

setup
get_word
while lives_left?
  show_progress
  input = gets
  guess_letter(input)
  if letter_has_already_been_guessed(@guess, @already_guessed_letters)
    puts "You already guessed that letter. Try another one."
  elsif letter_in_word(@guess, @answer)
    puts "letter in word"
    if word_finished
      win
    end
  else 
    lose_a_life
  end
end
puts "Sorry, there are no more lives left. You lost the game. Here's the word we were looking for: #{@answer}"