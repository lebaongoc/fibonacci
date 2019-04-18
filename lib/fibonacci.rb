# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: ?
# Space complexity: ?
def fibonacci(n)
  if n.nil? || n < 0
    raise ArgumentError
  end
  if n == 0
    return 0
  else
    p1 = 0
    p2 = 1

    (n - 1).times do
      p = p1 + p2
      p1 = p2
      p2 = p
    end
    return p2
  end
end
