# frozen_string_literal: true

puts 'Введите число месяца'
number = gets.to_i
puts 'Введите номер месяца'
month = gets.to_i
puts 'Введите год'
year = gets.to_i
month_array = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
month_array[1] = if year % 4 == 0
                   29
                 elsif (year % 100 == 0) && (year % 400 == 0)
                   29
                 end
sum_day = number + month_array.take(month - 1).sum
puts "Выбранная дата соответсвует #{sum_day} дню в году"
