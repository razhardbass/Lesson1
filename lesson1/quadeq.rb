puts 'Введите первый коэффициент a'
a = gets.to_f
puts 'Введите второй коэффициент b'
b = gets.to_f
puts 'Введите третий коэффициент c'
c = gets.to_f
discriminant = b**2 - a * c * 4
if discriminant < 0
  puts 'Корней нет'
elsif discriminant == 0
  x1 = (-b + Math.sqrt(discriminant.to_f)) / (2 * a)
  puts "Единственный корень х=#{x1}"
else
  x1 = (-b + Math.sqrt(discriminant.to_f)) / (2 * a)
  x2 = (-b - Math.sqrt(discriminant.to_f)) / (2 * a)
  puts "Два корня х1=#{x1} , х2=#{x2}"
end
