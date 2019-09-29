puts "Как вас зовут?"
name = gets.chomp
puts "Какой твой рост?"
height = gets.chomp
difference = height.to_i-110

if difference > 0
  puts "Привет, #{name}! Твой идеальный вес #{height.to_i-110}"
 else
   puts "Братишка #{name} , твой вес идеален!"
 end
