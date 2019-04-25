# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n), n is the number of computations this calculation needs to run to compute the nth fibonacci number
# Space complexity: O(1), space complexity is constant because this method only require a storage for 3 variables (p,p1,p2) regardless of number of operations
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
