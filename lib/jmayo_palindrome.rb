require "jmayo_palindrome/version"

class String
  #Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end
  
  #Returns the letters in a string
  def letters
  # #before refactoring with functional programming
  #   the_letters = []
  #   letter_regex = /[a-z]/i
  #   self.chars.each do |character|
  #     if character.match(letter_regex)
  #       the_letters << character
  #     end
  #   end
  #   the_letters.join
  
    self.chars.select { |c| c.match(/[a-z]/i) }.join #after refactoring :-)
  
  end
  
  private
  
  #Returns content for palindrome testing.
  def processed_content
    self.scan(/[a-z]/i).join.downcase
  end
end



