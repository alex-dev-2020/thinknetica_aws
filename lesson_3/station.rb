#  класс Station
class Station
  
    attr_reader  :st_name

    def initialize (st_name = "main")
        @st_name = st_name
        trains_list =[]
    end
    
    def train_in
        trains_list << train
    end
end