# frozen_string_literal: true

puts 'Введите число месяца'
number = gets.to_i
until number.between?(1,31)
  puts 'Введите число месяца от 1 до 31'
  number = gets.to_i
end
puts 'Введите номер месяца'
month = gets.to_i
until month.between?(1,12)
  puts 'Введите номер месяца от 1 до 12'
  month = gets.to_i
end
puts 'Введите год'
year = gets.to_i
until year > 0
  puts 'Введите положительное значение'
  year = gets.to_i
end
month_array = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
month_array[1] = if year % 4 == 0
                   29
                 elsif (year % 100 == 0) && (year % 400 == 0)
                   29
                 end
sum_day = number + month_array.take(month - 1).sum
puts "Выбранная дата соответсвует #{sum_day} дню в году"
