module Palindrome
  ### One-line solution for giggles
  def self.is_palindrome(str)
    (str.slice!(0).casecmp(str.slice!(-1)) == 0 ? is_palindrome(str) : false) if str.length > 1
  end
end

  ### The more readable version of that, if that's what you're into.
def self.readability_palindrome(str)
  return false unless str.length > 1
  if str.slice!(0).casecmp(str.slice!(-1)) == 0
    readability_palindrome(str)
  else
    return false
  end
end

Palindrome.is_palindrome("tacocat")
Palindrome.is_palindrome("cat") == false
Palindrome.is_palindrome("7TaCOCat7")
