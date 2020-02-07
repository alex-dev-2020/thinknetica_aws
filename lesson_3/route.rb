class Route

  # в ТЗ  вывод только  списка станций (будут в массиве лежать)

  attr_reader  :stations

  # при создании экземпляра класса указываются first & last 
  # объявляем массив с двумя элементами, остальные будем добавлять используя .insert 

  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
  end

  #добавление  станции в маршрут (предполагается, что -1  - это индекс последнего элемента)

  def add_station(station)
    @stations.insert(station(-2, station))
  end	

  # удаление станции из маршрута  метод .delete (нужно реализовать проверку != last_st && != first_st)

  def delete_station(station)
    if station != station.first && station != station.last
	  @stations.delete(station)
    else
	  puts 'Конечные точки маршрута удалить нельзя!'
    end
  end
end

