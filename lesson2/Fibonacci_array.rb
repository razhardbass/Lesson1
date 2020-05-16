fibonacci_array = [0, 1]
index = 0
while index < 56
  index = fibonacci_array[-1] + fibonacci_array[-2]
  fibonacci_array.push(index)
end
puts fibonacci_array
