class Train

	attr_reader  :train_id, :train_type, :wagon_qty

    def initialize(train_id, train_type, wagon_qty)
# speed = 0 at creation
		
		@train_id = train_id
		@type = train_type
		@wagons = []
		@speed = 0
		wagon_qty.times{add_wagon}
    end
    
  
# отдельным методом wagon_qty
    def wagon_qty
      @wagons.length.to_i
    end
    
    def speed_up(n)
      @speed += n
    end

    def speed_down(n)
# more attractive cecking of speed > 0 in line using ?
      @speed = (@speed - n > 0 ) ? @speed - n : stop
    end

    def stop
      @speed = 0
    end

#перепилил оба метода add_wagon & detach_wagon, если поезд едет - выводится сообщение warning
    def warning
      puts 'Train is running!!!'
    end

# очень интересаная реализация (подсмотрено у выпускников курса)
# переменная @ wagons  представляет собой фактически заготовку массива строковых элементов вида [ 'wagon#1', 'wagon#2'..'wagon#' ]
# который мы заполняем элементами при инициализации объекта класса
# здесь в методе просто подсчитываем количество элементов этого массива, генерим очередной и добавляем(пушим)
# здесь же проверяем условие speed == 0
    def add_wagon
    	(@speed == 0) ? @wagons << "wagon \##{wagon_qty + 1}" : warning 
    end
# добавил проверку на количество вагонов > 0  надо бы отдельный алёрт сделать по этому поводу
# detach wagon
    def detach_wagon
    	(@speed == 0 && wagon_qty > 0) ? @wagons.pop : warning    	
    end

end
