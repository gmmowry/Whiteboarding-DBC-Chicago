def reverse(string)
  string.size < 2 ? string : string[-1] + reverse(string[1..-2]) + string[0]
end

puts reverse("Hello") == "olleH"