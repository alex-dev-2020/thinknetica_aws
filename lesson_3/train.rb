class Train

	attr_reader  :train_id, :train_type, :wagon_qty,  :current_st

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
    def warning_speed
      puts 'Train is running!!!'
    end

# очень интересаная реализация (подсмотрено у выпускников курса)
# переменная @ wagons  представляет собой фактически заготовку массива строковых элементов вида [ 'wagon#1', 'wagon#2'..'wagon#' ]
# который мы заполняем элементами при инициализации объекта класса
# здесь в методе просто подсчитываем количество элементов этого массива, генерим очередной и добавляем(пушим)
# здесь же проверяем условие speed == 0
    def add_wagon
    	(@speed == 0) ? @wagons << "wagon \##{wagon_qty + 1}" : warning_speed
    end
# добавил проверку на количество вагонов > 0  надо бы отдельный алёрт сделать по этому поводу
# detach wagon
    def detach_wagon
    	(@speed == 0 && wagon_qty > 0) ? @wagons.pop : warning_speed    	
    end


# принимает объект класса Route
# может ПРИНИМАТЬ маршрут следования - в моем случае ОБЪЕКТ класса Route
# в route лежат объекты, в current_st лежит текущая станция
# при назначении маршрута поезду, поезд автоматически помещается на первую станцию в маршруте @current_st = 0 
# (первый элемент  массива @stations = [first_st, last_st] - объекта класса Route будет иметь нулевой индекс )

def accept_route (route)
	@route = route
	@current_st = 0
end

# возвращаем текущую  
def current_st
	current_st = @current_st
end


# может пермещаться между станциями, указанными в маршруте
# перемещаемся вперед возможно вперед и назад , но только на одну станцию, за один раз

# перемещаемся вперед дополнительно проверим, 
# не выезжаем ли мы за границу маршрута

def move_forward
  @current_st += 1 if @route.stations[@current_st] != @route.stations[last_st]
end

#  перемещаемся назад дополнительно проверим, 
#  не выезжаем ли мы за границу маршрута
def move_back
	@current_st -= 1 if @route.stations[@current_st] != @route.stations[first_st]
end


# возвращаем предыдущую (название из списка @route.stations а не индекс!!!!)
# надо запилить проверку и алёрт на первое  значение

  def previous_st
  	previous_st =  (@route.stations[@current_st] != @route.stations[first_st])? @route.stations[@current_st - 1] : warning_route_border
  end

# следующую (название из списка @route.stations а не индекс!!!!)
# надо запилить проверку и алёрт на последнее значение

  def next_st
  	next_st = (@route.stations[@current_st] != @route.stations[last_st])?   @route.stations[@current_st - 1] : warning_route_border
  end

  def warning_route_border
    puts 'The train reachs first/last point of route'
  end


end
