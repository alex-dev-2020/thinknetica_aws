# Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя). 
# Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным. 
# (Запрещено использовать встроенные в ruby методы для этого вроде Date#yday или Date#leap?)

print "Введите день: "
dt = gets.chomp.to_i
print "месяц: "
mn = gets.chomp.to_i 
print "и год: "
yr = gets.chomp.to_i

days_in_a_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days_in_a_month[1] = 29 if yr % 400 == 0 || ( yr % 4 ==0 && yr % 100 != 0)

sum = 0
for i in 0..mn-2
  sum += days_in_a_month[i]
end
sum += dt

puts "Порядковый номер даты: #{sum}"