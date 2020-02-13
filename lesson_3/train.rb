class Train

  attr_reader  :id, :type, :wagons, :current_station

  def initialize(id, type, wagons)
  # speed = 0 at creation
    @id = id
    @type = type
    @wagons = wagons
    @speed = 0
  end
    
  def speed_up(delta)
      @speed += delta
  end

  def speed_down(delta)
  # more attractive cecking of speed > 0 in line using ?
      @speed = (@speed - delta > 0 ) ? @speed - delta : stop
  end

  def stop
    @speed = 0
  end

  # пока оставляю пустой метод
  def warning_speed
    
  end
  



  # переделал после code-review - @wagons - просто переменная


  def add_wagon
    (@speed == 0) ? @wagons += 1  : warning_speed
  end
#  надо бы отдельный алёрт сделать по этому поводу
  # переделал после code-review -@ wagons - просто переменная + проверка на количество вагонов > 0 
# detach wagon
  def detach_wagon
    (@speed == 0 && wagons > 0) ? @wagons -= 1 : warning_speed    	
  end


  # принимает объект класса Route
  # может ПРИНИМАТЬ маршрут следования - в моем случае ОБЪЕКТ класса Route
  # в route лежат объекты, в current_station лежит текущая станция
  # при назначении маршрута поезду, поезд автоматически помещается на первую станцию в маршруте @current_station = first_station 

  def accept_route(route)
    @route = route
    @current_station = @route.stations.first
    # При назначении маршрута первая станция принимает поезд
    @current_station.train_in(self)
  end


 

  # При перемещении текущая станция отправляет поезд и следующая его принимает (проверкa уже реализована в next_station & previous-station)
  
    def move_forward
      @current_station.train_out(@id) && next_station.train_in(@id)
    end

  #  перемещаемся назад  , проверкa уже реализована в next_station & previous-station
  #  не выезжаем ли мы за границу маршрута
  def move_back
    @current_station.train_out(@id) && previous_station.train_in(@id)
  end


  # возвращаем предыдущую (название из списка @route.stations а не индекс!!!!)
  # надо запилить проверку и алёрт на первое  значение

  def previous_station
    previous_st =  (@route.stations[@current_station] != @route.stations[first_station])? @route.stations[@current_station - 1] : warning_route_border
  end

  # следующую (название из списка @route.stations а не индекс!!!!)
  # надо запилить проверку и алёрт на последнее значение

  def next_station
    next_station = (@route.stations[@current_station] != @route.stations[last_station])?  @route.stations[@current_station - 1] : warning_route_border
  end
  # оставляю пока пустой метод
  def warning_route_border
  
  end

end