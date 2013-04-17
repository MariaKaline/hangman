setup
get_word
while lives_left?
  show_progress
  guess_letter
  if letter_in_word
    puts "leter in word"
    if word_finished
      win
    end
  else 
    lose_a_life
  end
end