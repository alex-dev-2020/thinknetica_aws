# квадратное уравнение 
# пользователь вводит 2 коэфф. a, b , c 

puts "Введите коэффицент а"
a = gets.to_f
puts "Введите коэффициент b"
b = gets.to_f
puts "Введите коэффициент c"
c = gets.to_f

# Формула дискриминанта Дискриминант D квадратного трёхчлена ax2 + bx + c равен 
# b^2 - 4ac
# вычисляем дикриминант и имеем три варианта 
discriminant = b*b - (4*a*c)
# D > 0  выводим диксриминант и 2 корня
if discriminant > 0
    root_1 = (-b+ (Math.sqrt(discriminant)))/(2*a)
    root_2 = (-b-(Math.sqrt(discriminant)))/(2*a)
    puts "Дискриминант равен:#{discriminant}"
    puts "Корни равны:#{root_1} и #{root_2}"
# D = 0 выводим дискрриминант и  1 корень(корни равны)
elsif discriminant ==0
    root_3 = root_1 = (-b+(Math.sqrt(discriminant)))/(2*a)
    puts "Дискриминант равен: #{discriminant}"
    puts "Корень  единственный: #{root_3}"
# D < 0 выводим дискриминант и сообщение - корней нет
else
    puputs "Дискриминант равен: #{discriminant}"
    puts "Корней нет"
end



# в принципе - вообще подъемная тема
# https://www.berdov.com/docs/equation/quadratic_equations/
# x2 − 2x − 3 = 0;
# Введите коэффицент а
# 1
# Введите коэффициент b
# -2
#  Введите коэффициент c
# -3
# Дискриминант равен: 16.0
# Корни равны: 3.0 и -1.0