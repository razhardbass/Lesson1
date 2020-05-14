Fibonacci_array = [0, 1].freeze
index = 0
while index < 56
  index = Fibonacci_array[-1] + Fibonacci_array[-2]
  Fibonacci_array.push(index)
end
puts Fibonacci_array
