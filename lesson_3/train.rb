class Train
 
  attr_reader  :train_id, :train_type :wagons_count
  
  def initialize(train_id, type = "cargo", wagons_count_count = 10)
    @train_id = train_id
	@speed = 0
	
	@wagons_count_count = []
  
# id (number), type (pass/cargo), vagon_count (q-ty)
  
  
  end
  
# speed up
  def speed_up(n)
    @speed += n 
  end
  
# speed down
  def speed_down(n)
    @speed -= n
  end
# stop
  def stop
    @speed = 0  
  end
  
# add wagons (one per action, only if speed = 0)
 def add_wagon
   @wagons << wagon if speed == 0
 end
 
# detach wagons (one per action, only if speed = 0)
 def
 
 end
 
# wagons quantity
 def wagons_count
   
   @wagons.length
 
 
 end

# accept route
 def
 
 end
 
# if accep route - train placed at 1st station of route !!!

 def
 
 end

# moves among  stations in route (one shift per action) 

  def
  
  end
  
# return station name (previous current, next)

  def
  
  end

    
end