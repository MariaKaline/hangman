require 'minitest/autorun'
require_relative './hangman_library'

describe "letter_in_word" do
  it "does something" do
    letter_in_word("a","apple").must_equal(true)
    letter_in_word("b","apple").must_equal(false)
    letter_in_word("A","apple").must_equal(false)
  end
end

describe "guess_letter" do
  it "tests if given letter is correctly converted to a lower case letter" do
    guess_letter("A").must_equal("a")
    guess_letter("y").must_equal("y")
    guess_letter("y\n").must_equal("y")
  end

  describe "playing one round of hangman" do 
    it "correctly recognizes letter as not guessed before" do
      guess_letter "x"
      
      letter_has_already_been_guessed.must_equal(false)
    end
    
    it "correctly recognizes already guessed letter as guessed before"
  end
  

end