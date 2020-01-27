# прямоугольный треугольник
# запрашиваем у юзера три стороны
# после code review
sides =[]
puts "Please input side a"
sides << gets.to_f
puts"Please input side b"
sides << gets.to_f
puts "Please input side c"
sides << gets.to_f
# находим самую длинную сторону
a, b, h =  sides.sort
# puts a
# puts b
# puts c
puts h
puts sides
# hypotenuse = a  - не надо походу!!!
# цикл до 3, или массивом сделать?
# if a == b && b == c
#     puts"You have an isosceles triangle!"
# #  допилил условие для равнобедренного через cумму регулярок 
# else
if h*h == a*a+b*b
  puts "Triangle is right"
else
  puts "Triangle is not right"
end
# end
#  допилилл!!

# пифагоровы тройки
# 3, 4, 5
# 5, 12, 13
# 7, 24, 25
#  https://scientificmagazine.ru/images/PDF/2016/12/tablitsa-pifagorovykh-troek-chisel.pdf

# Please input side a
# 3
# Please input side b
# 4
# Please input side c
# 6
# 6.0
# 3.0
# 4.0
# 6.0
# Triangle is not right

# Please input side a
# 3
# Please input side b
# 4
# Please input side c
# 5
# 5.0
# 3.0
# 4.0
# 5.0
# Triangle is right


# Process exited with code: 0
# Process exited with code: 0