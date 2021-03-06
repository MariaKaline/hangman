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

def update_progress(answer)
  @progress=""
  answer.chars.each do |letter|
    if @already_guessed_letters.include?(letter)
      @progress = @progress + letter
    else 
      @progress = @progress + "_"
    end
  end
end

def show_progress(answer)
  update_progress(answer)
  puts @progress
end

def guess_letter(input)
  input.strip.downcase
end 

def letter_in_word(letter, word)
  word.include?(letter)
end

def word_finished(answer)
  update_progress(answer)
  @progress == answer
end

def item_in_list?(item, list)
  list.include?(item)
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
  

