require_relative './hangman_library'

setup
get_word
while lives_left?
  show_progress(@answer)
  puts "Guess a letter."
  guess = guess_letter(gets)
  letter_has_already_been_guessed = item_in_list?(guess, @already_guessed_letters)
  @already_guessed_letters << guess
  if letter_has_already_been_guessed
    puts "You already guessed that letter. Try another one."
  elsif letter_in_word(guess, @answer)
    puts "letter in word"
    if word_finished(@answer)
      win
    end
  else 
    lose_a_life
  end
end
puts "Sorry, there are no more lives left. You lost the game. Here's the word we were looking for: #{@answer}"