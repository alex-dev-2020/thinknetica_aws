#  площадь треугольника
# просим у пользователя длинну основания
puts "Please input base length"
base_l = gets.to_f
puts "Please input height"
height = gets.to_f
triangle_area = (base_l*height)/2
# puts
puts "The trianle area is: #{triangle_area.round(5)}"
