def fibonacci(n)
  if n == 1
    return 0
  elsif n == 2
    return 1
  end

  fibonacci(n-1) + fibonacci(n-2)
end

puts fibonacci(10) == 34
