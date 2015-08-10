def is_palindrome?(submitted)
  sanitized = sanitize_input(submitted)
  check_if_palindrome(sanitized) ? true : false
end

def check_if_palindrome(sanitized_string)
 sanitized_string.length <= 1 ? true : sanitized_string.slice!(0) == sanitized_string.slice!(-1) && check_if_palindrome(sanitized_string)
end

def sanitize_input(submitted_string)
  #downcase and filter out any non-alphanumeric characters
  submitted_string.downcase.gsub(/\W/,'')
end

##################################
p is_palindrome?("a")
p is_palindrome?(" ")
p is_palindrome?("2e2")
p is_palindrome?("LoL")
p is_palindrome?("aMaM") == false
p is_palindrome?("racecar")
p is_palindrome?("??46*(") == false
p is_palindrome?("! 5Bo b5?")
p is_palindrome?("0Rib On    NObi   R0")
