puts "Как тебя зовут?"
name = gets.chomp
puts "Какой твой рост?"
height = gets.chomp
idealw = (height.to_i - 110)*1.15
if idealw < 0
    puts "Ваш вес уже оптимальный"
else 
    puts "#{name}, твой идеальный вес #{idealw}"
end