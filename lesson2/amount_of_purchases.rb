# frozen_string_literal: true

basket = {}
loop do
  puts 'Введите название товара'
  product_name = gets.chomp.capitalize!
  break if product_name == 'Стоп'

  puts 'Введите цену товара'
  product_price = gets.to_f
  puts 'Введите количество товара'
  product_quantity = gets.to_i
  basket[product_name] = { price: product_price, quantity: product_quantity }
end

total_amount = 0
basket.each do |product_name, info|
  total_for_goods = info[:price] * info[:quantity]
  total_amount += total_for_goods
  puts "Цена за товар #{product_name} равна #{info[:price]},количество #{info[:quantity]}, сумма #{total_for_goods}"
end
puts "Сумма всех покупок #{total_amount}"

