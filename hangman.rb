require_relative './hangman_library'

setup
get_word
while lives_left?
  show_progress
  guess = guess_letter(gets)
  @already_guessed_letters << guess
  if letter_has_already_been_guessed(guess, @already_guessed_letters[0..-2])
    puts "You already guessed that letter. Try another one."
  elsif letter_in_word(guess, @answer)
    puts "letter in word"
    if word_finished
      win
    end
  else 
    lose_a_life
  end
end
puts "Sorry, there are no more lives left. You lost the game. Here's the word we were looking for: #{@answer}"