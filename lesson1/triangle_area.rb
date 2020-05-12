puts "Введите основание треугольника"
base = gets.to_f
puts "Введите высоту треугольника"
height = gets.chomp
area = 0.5*base.to_i*height.to_i

puts "Площадь треугольника #{area}"