class Station 

  attr_reader  :name, :trains

  
  def initialize(st_name)
    @name = st_name
    @trains = []
  end

  # arrival - the train added to array of trains

  def train_in(train)
    @trains << train
  end

 
  # get the list of trains by type - just use .select method of Array (нужно будет пилить подобный метод у классса Train)

  def trains_by_type(train_type)
    @trains.select { |train| train.type == train_type }
  end

  # departure just delete the train from array of trains (using .delete method of Array)

  def train_out(train)
    @trains.delete(train)
  end
end
