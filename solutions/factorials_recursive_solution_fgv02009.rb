def factorial_recursive(n)
  return 1 if n == 0 || n == 1
  n * factorial_recursive(n-1)
end

def factorial_iterative(n)
  product = n

  while n > 1
    product  *= (n-1)
    n -= 1
  end

  return product
end

puts factorial_recursive(8) == 40320
puts factorial_iterative(8) == 40320