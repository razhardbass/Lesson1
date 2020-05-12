sidearray=[]
puts "Введите первую сторону треугольника"
sidearray << gets.to_f
puts "Введите вторую сторону треугольника"
sidearray << gets.to_f
puts "Введите третью сторону треугольника"
sidearray << gets.to_f
side1,side2,hyp=sidearray.sort!
right_triangle = side1**2+side2**2==hyp**2
if side1==side2 && side1==hyp
    puts "Треугольник равносторонний и равнобедренный"
elsif side1==side2 
    puts "Треугольник равнобедренный"
elsif right_triangle
     puts "Треугольник прямоугольный"
end