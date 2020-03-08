 # this file for test purpose only
 class Car
     attr_reader :current_rpm
     
     def self.description
      puts "Это базовый класс для всех авто"
     end
     
     def initialize
         @current_rpm = 0
     end
    
     def start_engine
         start_engine! if engine_stoppped?
     end
     
     def engine_stoppped?
      current_rpm.zero?
     end
     
     protected
     attr_writer :current_rpm
     
     def initial_rpm
      700
     end
     
     def start_engine!
      self.current_rpm = initial_rpm
     end
end
