def setup
@attempts=0
@already_guessed_letters=[]
@wrong_letters=[]
@letter=[]
@progress=[]
end

def get_word
  @answer=File.readlines("/usr/share/dict/words").shuffle.first.strip
end

def lives_left?
  puts @attempts
  @attempts < 10
end

def update_progress
  puts @answer
  @progress=""
  @answer.chars.each do |letter|
    if @already_guessed_letters.include?(letter)
      @progress = @progress + letter
    else 
      @progress = @progress + "_"
    end
  end
end

def show_progress
  update_progress
  puts @progress
end

def guess_letter
  puts "Guess a letter!"
  @already_guessed_letters << gets.strip.downcase
end 

def letter_in_word
  last_guess = @already_guessed_letters.last
  @answer.include?(last_guess)
end

def word_finished
  update_progress
  @progress == @answer
end

def lose_a_life
  puts "here"
  puts @attempts
  @attempts = @attempts + 1
  puts "and then"
  puts @attempts
end

def win
  puts @progress
  puts "Congratulations, you won!"
  exit
end
  

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